# Lab2 实验报告：SW64 物理内存管理

## 一、实验目的

1. 理解操作系统中物理内存管理的概念和方法
2. 掌握 SW64 内核地址空间的两套编址方式（512M 窗口 & 128T 窗口）
3. 实现物理页管理框架：page_init + alloc_pages + free_pages
4. 掌握物理内存分配算法：first_fit、best_fit
5. 理解 struct Page 链表管理、地址转换（PADDR/KADDR）的实现

## 二、实验环境

- 编译器：`sw_64sw6b-sunway-linux-gnu-gcc`
- 模拟器：`qemu-system-sw64`（core3-hmcode 版本）
- 内核入口：`0xffffffff80910000`
- 物理内存：512M（`0x00000000` ~ `0x20000000`）
- 页大小：8K（PGSHIFT=13）
- 可用内存起始：NODE0_START = `0x910000`（内核入口 - `__START_KERNEL_map`）

## 三、实验原理

### 3.1 SW64 内核地址空间

SW64 内核使用两套线性地址映射同一物理内存：

| 窗口 | 起始地址 | 容量 | 用途 |
|------|----------|:----:|------|
| 512M 内核窗口 | `0xffffffff80000000` | 512M | 内核代码段，简洁但容量有限 |
| 128T 直接映射窗口 | `0xfff0000000000000` | 128T | `__va(pa)` 返回，可访问全部物理内存 |

地址转换：

```c
#define __START_KERNEL_map  0xffffffff80000000UL
#define PAGE_OFFSET         0xfff0000000000000UL

// 物理 → 512M 虚拟：__va(pa) = pa | PAGE_OFFSET
// 虚拟 → 物理：PADDR(kva) = kva - va_pa_offset（va_pa_offset = 0xffffffff80000000）
```

### 3.2 物理内存布局

```
物理地址 0 ─────────────────────────────────────────── 0x20000000 (512M)
                │                  │                │
            NODE0_START        pages 数组      空闲页区域
           (0x910000)         (紧贴 end)     (init_memmap 管理)
           [内核代码+数据]
```

可用内存从 NODE0_START（0x910000）开始，之前 9.1M 保留给硬件。内核在 end 之后分配 pages 数组，再之后全部是空闲物理页。

### 3.3 struct Page 与 空闲链表

每物理页对应一个 `struct Page`：

```c
struct Page {
    int ref;                    // 引用计数
    volatile uint64_t flags;    // 标志位（PG_reserved=bit0, PG_property=bit1）
    unsigned int property;      // 空闲块首页记录块大小（页数）
    list_entry_t page_link;     // 双向链表节点
};
```

空闲页通过 `free_area_t` 管理——包含一个双向链表头 `free_list` 和空闲页计数器 `nr_free`。链表按物理地址从小到大排列，相邻空闲块自动合并。

### 3.4 分配算法

**first_fit**：从头遍历空闲链表，第一个 `property >= n` 的块就切。优点快，缺点容易碎片化。

**best_fit**：遍历全部空闲块，选 `property` 最接近 n 的切。减少碎片，但遍历更耗时。

两者共享完全相同的 init、init_memmap、free_pages 函数，只有 alloc_pages 的查找逻辑不同——first_fit 找到第一个即 break，best_fit 遍历完才挑出最佳的。

### 3.5 分配保护

`alloc_pages`/`free_pages` 内部通过 `local_intr_save`/`local_intr_restore` 关中断保护，防止时钟中断处理函数破坏链表状态。

## 四、实验步骤与关键代码

### 4.1 基础文件迁移

从 lab1 拷贝 SW64 基础设施（entry.S、trapentry.S、trap.c、sw.h、sw64.h、kernel.ld 等），删除 RISC-V 残留（riscv.h、sbi.c/h）。

### 4.2 物理内存初始化（pmm.c）

```c
static void page_init(void) {
    va_pa_offset = PHYSICAL_MEMORY_OFFSET;  // 0xffffffff80000000
    extern char end[];
    npage = PHYSICAL_MEMORY_END / PGSIZE;   // 512M / 8K = 65536
    pages = (struct Page *)ROUNDUP((void *)end, PGSIZE);

    // 全部页先标记为保留
    for (size_t i = 0; i < npage - nbase; i++)
        SetPageReserved(pages + i);

    // 计算空闲区：pages 数组之后 → 512M 末尾
    uintptr_t freemem = PADDR((uintptr_t)pages + sizeof(struct Page) * (npage - nbase));
    uint64_t mem_begin = ROUNDUP(freemem, PGSIZE);
    uint64_t mem_end   = ROUNDDOWN(PHYSICAL_MEMORY_END, PGSIZE);

    if (freemem < mem_end)
        init_memmap(pa2page(mem_begin), (mem_end - mem_begin) / PGSIZE);
}
```

### 4.3 best_fit 分配算法（best_fit_pmm.c）

```c
static struct Page *best_fit_alloc_pages(size_t n) {
    if (n > nr_free) return NULL;

    struct Page *best = NULL;
    size_t best_size = nr_free + 1;
    list_entry_t *le = &free_list;

    // 遍历全部空闲块，找最匹配的
    while ((le = list_next(le)) != &free_list) {
        struct Page *p = le2page(le, page_link);
        if (p->property >= n && p->property < best_size) {
            best = p;
            best_size = p->property;
        }
    }

    if (best == NULL) return NULL;
    // 切分、移除、减计数 —— 和 first_fit 完全一致
    list_del(&(best->page_link));
    if (best->property > n) {
        struct Page *p = best + n;
        p->property = best->property - n;
        SetPageProperty(p);
        list_add(prev, &(p->page_link));
    }
    nr_free -= n;
    ClearPageProperty(best);
    return best;
}
```

### 4.4 地址转换（pmm.h）

```c
#define PADDR(kva) ({ (uintptr_t)(kva) - va_pa_offset; })
#define KADDR(pa)  ({ (void *)((unsigned long)(pa) + va_pa_offset); })
```

### 4.5 位操作（atomic.h）

```c
static inline void set_bit(int nr, volatile void *addr) {
    unsigned long *p = ((unsigned long *)addr) + (nr / 64);
    *p |= (1UL << (nr % 64));
}
```

`clear_bit`、`test_bit` 同理。用于操作 Page 的 flags 字段。

### 4.6 init.c 集成

```c
int kern_init(void) {
    memset(edata, 0, end - edata);
    trap_init();
    pmm_init();       // ← lab2 新增：物理内存初始化
    clock_init();
    intr_enable();
    // 断点 + 非法指令测试
    while (1);
}
```

## 五、遇到的问题与解决方案

### 问题 1：`p->flags = 0` 被编译器优化掉

**现象**：page_init 后首空闲页 flags=0x3（Reserved 位未清除），free_pages 断言失败。

**原因**：`flags` 是普通 `uint64_t`，但后续所有访问（set_bit/test_bit）都走 `volatile void*` 指针。编译器认为 `p->flags = 0` 是"死写"——之后没有非 volatile 读——将其优化掉。

**解决**：
1. `flags` 加 `volatile` 修饰
2. `init_memmap` / `free_pages` 改用 `memset(p, 0, sizeof(struct Page))` 清零，`memset` 走 `void*` 可别名任何类型

### 问题 2：nbase 错误导致页号计算偏差

**现象**：物理地址 0xB92000 通过 `pa2page` 得到的页索引与预期不符。

**原因**：RISC-V 版 `nbase = DRAM_BASE / PGSIZE`（物理内存从 0x80000000 开始），盲目设为 `nbase = 0`。但 SW64 的可用内存从 NODE0_START（0x910000）开始。

**解决**：参考 Linux `arch/sw_64/include/asm/memory.h`：
```c
#define NODE0_START (_TEXT_START - __START_KERNEL_map)  // 0x910000
const size_t nbase = NODE0_START / PGSIZE;               // = 1160
```

### 问题 3：best_fit_check 链表恢复导致死循环

**现象**：default_pmm 跑通后切换 best_fit，basic_check 处挂死。

**原因**：best_fit_check 中 `free_list = free_list_store` 恢复链表头后，之前 alloc/free 操作已修改了 page_link 的 prev/next 指针，导致链表遍历无限循环。

**解决**：best_fit 和 default 只有 alloc 逻辑不同，check 函数直接用 default 版本的测试逻辑。

## 六、运行验证

```bash
make clean && make && make qemu
# 在 QEMU monitor 中：
pmemsave 0x700000 2000 p.log
quit
cat p.log
```

### 验证结果

```
memory management: best_fit_pmm_manager
physcial memory map:
  memory: 0x000000001f46e000, [0x0000000000b92000, 0x000000001fffffff].
check_alloc_page() succeeded!
++ setup timer interrupts
breakpoint pc = ffffffff809100f0
opDEC  pc = ffffffff809100f4
100 ticks → 200 ticks → 300 ticks → ...
```

| 输出 | 验证内容 |
|------|----------|
| `best_fit_pmm_manager` | best_fit 分配器已启用 |
| `memory: 0x...` | 物理内存范围正确（~500MB 可用） |
| `check_alloc_page() succeeded!` | alloc/free 自测通过 |
| `breakpoint pc` / `opDEC pc` | lab1 中断/异常功能正常 |
| `ticks` 递增 | 时钟中断持续触发 |

## 七、实验总结

本次实验在 lab1 中断框架基础上，实现了完整的物理内存管理系统：

1. **物理页管理**：page_init 将 512M 物理内存切分为 8K 页，pages 数组紧跟内核 end 之后，空闲页通过双向链表管理

2. **分配算法**：实现 best_fit，与 first_fit 共享相同的基础操作（init/init_memmap/free_pages），仅 alloc 查找逻辑不同

3. **地址转换**：PADDR/KADDR 在 512M 内核窗口和物理地址间转换

4. **关键教训**：`volatile` 与普通变量之间的严格别名规则会导致编译器优化掉"看起来是死写"的赋值；`memset` 通过 `void*` 绕过了这个问题

**核心理解**：物理内存管理的本质是把一段连续的物理地址空间切分为固定大小的页，用链表数据结构追踪空闲/占用状态，并提供高效的分配和回收接口。SW64 的两套内核地址窗口（512M + 128T）为地址转换增加了复杂度，但原理与其他架构一致。
