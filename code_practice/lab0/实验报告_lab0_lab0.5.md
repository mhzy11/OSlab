# Lab0 & Lab0.5 实验报告：最小内核移植（RISC-V → SW64）

## 一、实验目的

1. 了解操作系统开发实验环境，学会使用 Linux 基本命令、Vim 编辑器、qemu 模拟器
2. 掌握 SW 交叉编译器（swgcc）的配置与使用
3. 理解 Makefile 规则与编译链接流程
4. 掌握将 RISC-V 架构的 uCore 内核移植到 SW64 架构的方法
5. 理解 SW64 架构的 GP 寄存器、内核地址映射（DTB miss / ITB miss 处理）
6. 构建最小内核，实现内核打印输出到内存打印区

## 二、实验环境

- 编译器：`sw_64sw6b-sunway-linux-gnu-gcc`（SW64 交叉编译器）
- 模拟器：`qemu-system-sw64`（qemu v6.2.0-sw-temp 分支）
- 机器模型：`core3`，单核，512M 内存
- 内核入口地址：`0xffffffff80910000`
- 内核打印区：`[0xffffffff80700000, 0xffffffff80700000 + 1M)`

## 三、实验原理

### 3.1 RISC-V64 与 SW64 的关键差异

| 特性 | RISC-V64 | SW64 |
|------|----------|------|
| 页大小 | 4K（PGSHIFT=12） | 8K（PGSHIFT=13） |
| 固件 | OpenSBI（提供打印、定时器等接口） | 无固件，qemu 直接加载内核，Hmcode 跳转到入口 |
| 内核入口地址 | 0x80200000 | 0xffffffff80910000 |
| ELF 格式 | elf64lriscv | elf64sw_64 |
| Code Model | medany | 无需此选项 |
| 硬件除法 | 支持 | 不支持，需要软件模拟（__divlu/__remlu 等） |
| GP 寄存器 | 不使用 GP 相对寻址 | 使用 $gp(29) 进行全局变量寻址 |

### 3.2 SW64 内核地址映射机制

内核虚拟地址 `0xffffffff80700000` 能够映射到物理地址 `0x700000`，依赖以下机制：

- **DTB miss（Data TLB miss）**：CPU 访问数据时若 TLB 未命中，触发 DTB miss 异常。Hmcode 查找页表填充 TLB 条目。
- **ITB miss（Instruction TLB miss）**：CPU 取指时若 TLB 未命中，触发 ITB miss 异常。入口代码在 Hmcode 的 `entry/itbm_single_k.S` 中。

内核虚拟地址的高位（`0xffffffff...`）表明这是内核空间地址，对应"核心脱靶"而非"用户脱靶"的处理路径。

### 3.3 GP 寄存器原理

SW64 采用 GP-relative 寻址方式访问全局变量和函数：
- `$gp`（r29）指向 GOT（Global Offset Table）基址
- `ldgp $29, 0($27)` 指令：利用 `$27` 中的当前 PC 值计算 GP 值
- `$27` 作为返回地址寄存器，在 `br` 指令后保存下一条指令地址

### 3.4 从汇编到 C 环境的三步骤

1. **获取正确的 GP**：通过 `br $27, 1f` + `ldgp $29, 0($27)` 序列设置 `$gp`
2. **构建栈**：用 `ldi $30, bootstacktop` 将栈顶地址装入 `$sp`（r30）
3. **跳转 C 函数**：`call $26, kern_init` 跳转到 C 入口

## 四、实验步骤与代码修改

### 4.1 删除 RISC-V 相关文件

删除以下不再需要的 RISC-V（OpenSBI）相关文件：
- [libs/sbi.c](libs/sbi.c) 和 [libs/sbi.h](libs/sbi.h)：SBI 固件调用接口
- [kern/driver/console.c](kern/driver/console.c) 和 [kern/driver/console.h](kern/driver/console.h)：基于 SBI 的控制台输入输出
- 保留 [libs/riscv.h](libs/riscv.h) 作为参考，但不再 `#include`

### 4.2 Makefile 修改

[Makefile](Makefile) 的关键修改：

```makefile
# 交叉编译器切换
GCCPREFIX := sw_64sw6b-sunway-linux-gnu-

# QEMU 切换
QEMU := qemu-system-sw64

# 移除 riscv 专属编译选项（-mcmodel=medany 在 SW 上不被识别）
CFLAGS  := -std=gnu99 -Wno-unused -Werror

# 链接器仿真模式切换
LDFLAGS	:= -m elf64sw_64

# 移除不存在的目录（driver、trap、debug、arch）
KINCLUDE += kern/mm/ kern/libs/
KSRCDIR  += kern/init kern/libs kern/mm
```

此外新增了除法辅助目标文件的链接：

```makefile
# SW64 无硬件除法，加入预编译的软件除法 .o 文件
KOBJS += libs/__divlu.o libs/__remlu.o libs/__divwu.o libs/__remwu.o
```

QEMU 运行命令改为：

```makefile
qemu: $(kernel)
    $(V)$(QEMU) -smp 1 -machine core3 -m 512m -kernel $(kernel) -monitor stdio
```

### 4.3 页大小修改

[kern/mm/mmu.h](kern/mm/mmu.h)：

```c
#define PGSIZE    8192    // 4K → 8K
#define PGSHIFT    13     // 12 → 13
```

### 4.4 entry.S 移植（RISC-V 汇编 → SW64 汇编）

这是整个实验最关键的步骤。[kern/init/entry.S](kern/init/entry.S) 从 RISC-V 汇编改写为 SW64 汇编：

**修改前（RISC-V）：**
```asm
kern_entry:
    la sp, bootstacktop    // RISC-V 伪指令，加载地址到 sp
    tail kern_init         // RISC-V 尾调用，跳转到 kern_init
```

**修改后（SW64）：**
```asm
kern_entry:
    .prologue 0
    br $27, 1f             // 将返回地址存入 $27，跳转到标签 1
1:  ldgp $29, 0($27)       // 加载 GP 值，实现 GP-relative 寻址
    ldi $30, bootstacktop  // 将栈顶地址加载到 $sp（r30）
    call $26, kern_init    // 调用 C 入口函数
    .end kern_entry
```

指令说明：
- `br $27, 1f`：无条件跳转到前向标签 `1`，同时将返回地址存入 `$27`
- `ldgp $29, 0($27)`：从 `$27` 计算 GP 值并存入 `$gp`（r29）
- `ldi $30, bootstacktop`：立即寻址加载栈顶符号地址到 `$sp`（r30）
- `call $26, kern_init`：调用 C 函数 `kern_init`，返回地址存入 `$26`（ra）

栈空间定义（位于 `.data` 段，按 8K 页对齐）：

```asm
.align PGSHIFT
.global bootstack
bootstack:
    .space KSTACKSIZE      // KSTACKSIZE = 2 × 8K = 16KB
.global bootstacktop
bootstacktop:
```

### 4.5 链接脚本修改

[tools/kernel.ld](tools/kernel.ld) 的关键修改：

```ld
OUTPUT_FORMAT("elf64-sw_64")       // 输出格式
OUTPUT_ARCH(sw_64)                  // 目标架构
ENTRY(kern_entry)                   // 入口符号

BASE_ADDRESS = 0xffffffff80910000;  // 入口地址（与 Linux 内核一致）

SECTIONS {
    . = BASE_ADDRESS;
    .text : { *(.text.kern_entry .text ...) }
    // ...
    . = ALIGN(0x2000);              // 8K 对齐（而非 4K）

    .got : { *(.got) *(.got.*) }    // GOT 表（SW64 GP 寻址必需）
    .data : { *(.data) ... }
    .sdata : { *(.sdata) ... }      // 短数据段

    /DISCARD/ : { ... }             // 丢弃调试信息等无用段
}
```

### 4.6 do_div 宏移植

创建 [libs/sw.h](libs/sw.h)，将 `do_div` 宏从已删除的 `riscv.h` 中拷贝过来：

```c
#define do_div(n, base) ({                      \
    int __res;                                  \
    __res = ((unsigned long)n) % (unsigned)base;\
    n = ((unsigned long)n) / (unsigned)base;    \
    __res;                                      \
})
```

在 `printfmt.c` 中将 `#include <riscv.h>` 改为 `#include <sw.h>`。

### 4.7 内核打印实现

[libs/stdio.h](libs/stdio.h) 中定义打印区常量：

```c
#define KERNEL_PRINTK_BUFF_BASE  0xffffffff80700000UL  // 内核打印虚拟地址
#define KERNEL_PRINTK_BUFF_SIZE  0x100000UL            // 1MB
```

[kern/libs/stdio.c](kern/libs/stdio.c) 实现字符级写打印区：

```c
static unsigned long printk_offset = 0;

static void cputch(int c, int *cnt) {
    char *buf = (char *)(KERNEL_PRINTK_BUFF_BASE + printk_offset);
    if (printk_offset >= (KERNEL_PRINTK_BUFF_SIZE - 1)) {
        printk_offset = 0;
        buf = (char *)KERNEL_PRINTK_BUFF_BASE;
    }
    *buf = (char)c;
    printk_offset++;
    (*cnt)++;
}
```

每个字符直接写入虚拟地址 `0xffffffff80700000 + offset`，CPU 通过 DTB miss → Hmcode 页表填充将虚拟地址转换为物理地址 `0x700000 + offset`。不再依赖 OpenSBI 的 `sbi_console_putchar`。

### 4.8 清理 console 相关代码

`kern/libs/stdio.c` 中：
- 移除 `#include <console.h>`
- 移除 `cputchar()` 对 `cons_putc()` 的调用，改为直接写内存打印区
- 移除 `getchar()` 对 `cons_getc()` 的依赖（最小内核对控制台输入暂不支持）

### 4.9 最终目录结构

```
lab0/
├── kern/
│   ├── init/
│   │   ├── entry.S          # SW64 汇编入口
│   │   └── init.c           # C 入口 kern_init()
│   ├── libs/
│   │   └── stdio.c          # 内核打印（写内存打印区）
│   └── mm/
│       ├── memlayout.h      # 打印区地址定义
│       └── mmu.h            # 页大小定义（8K）
├── libs/
│   ├── defs.h               # 基本类型定义
│   ├── error.h              # 错误码
│   ├── printfmt.c           # 格式化打印
│   ├── readline.c           # 行读取
│   ├── stdarg.h             # 变参宏
│   ├── stdio.h              # 打印区常量 & 接口声明
│   ├── string.c             # 字符串/内存操作
│   ├── string.h
│   ├── sw.h                 # do_div 宏
│   ├── __divlu.o            # 64位无符号除法
│   ├── __remlu.o            # 64位无符号取余
│   ├── __divwu.o            # 32位无符号除法
│   └── __remwu.o            # 32位无符号取余
├── Makefile
└── tools/
    ├── function.mk
    └── kernel.ld            # SW64 链接脚本
```

## 五、遇到的问题与解决方案

### 问题 1：riscv 文件清理不彻底

**现象**：make 时报 `fatal error: sbi.h: No such file or directory`、`console.h: No such file or directory`

**原因**：只是删除/修改了一部分文件，但还存在引用链：
- `kern/driver/console.c` 引用了 `sbi.h`
- `kern/libs/stdio.c` 引用了 `console.h`
- `Makefile` 中 `KINCLUDE` 和 `KSRCDIR` 仍包含 `kern/debug/`、`kern/driver/`、`kern/trap/`、`kern/arch/` 等已不存在的目录

**解决方案**（按错误出现顺序逐一解决）：
1. 删除 `kern/driver/console.c` 和 `console.h`
2. 删除 `libs/sbi.c` 和 `libs/sbi.h`
3. 从 `kern/libs/stdio.c` 中移除 `#include <console.h>`，删除 `cons_putc()`、`cons_getc()` 调用
4. 从 `Makefile` 中移除不存在的目录，只保留 `kern/init`、`kern/libs`、`kern/mm`
5. 新增 `libs/sw.h` 替代 `riscv.h` 中的 `do_div` 宏

### 问题 2：swgcc 编译器配置不到位

**现象**：`sw_64sw6b-sunway-linux-gnu-gcc: error: unrecognized command line option '-mcmodel=medany'`

**原因**：Makefile 中 CFLAGS 仍保留了 RISC-V 的 `-mcmodel=medany` 编译选项，SW64 交叉编译器不识别此选项。

**解决方案**：从 CFLAGS 中移除 `-mcmodel=medany`：

```makefile
# 修改前
CFLAGS := -mcmodel=medany -std=gnu99 -Wno-unused -Werror

# 修改后
CFLAGS := -std=gnu99 -Wno-unused -Werror
```

### 问题 3：链接器仿真模式错误

**现象**：`sw_64sw6b-sunway-linux-gnu-ld: unrecognised emulation mode: elf64lriscv`

**原因**：LDFLAGS 中仍使用 RISC-V 的链接器仿真模式。

**解决方案**：

```makefile
# 修改前
LDFLAGS := -m elf64lriscv

# 修改后
LDFLAGS := -m elf64sw_64
```

### 问题 4：entry.S 指令编写不当（导致 p.log 为空）

**现象**：make 编译通过，qemu 成功加载内核，但 `pmemsave 0x700000 1000 p.log` 后 `cat p.log` 显示为空。

**原因分析**：这是整个实验中影响最大的问题。entry.S 的汇编代码有多处关键错误：

1. **GP 设置缺失**：RISC-V 原始代码直接 `la sp, bootstacktop` 后 `tail kern_init`，不需要设置 GP。但 SW64 架构中，访问全局变量（如 `printk_offset`、消息字符串等）依赖 GP-relative 寻址方式。如果没有正确设置 `$gp`（r29），C 代码中任何对全局变量的访问都会访问到错误地址，导致打印缓冲区偏移 `printk_offset` 无法正确读写。

2. **栈设置方式错误**：RISC-V 用 `la sp, bootstacktop`（伪指令，展开为 `auipc + addi`），SW64 的正确方式是 `ldi $30, bootstacktop`（立即数加载到 `$sp`/r30）。

3. **跳转方式错误**：RISC-V 用 `tail kern_init`（尾调用，不保留返回地址），SW64 的正确方式是先用 `br $27, 1f` + `ldgp` 设置好 GP 后，再用 `call $26, kern_init`（标准函数调用）。

**具体的错误尝试记录**：
- 初期尝试：直接模仿 RISC-V 结构，用 `ldi $30, label` 尝试加载地址，但未设置 GP → C 代码中全局变量访问崩溃
- 中期尝试：设置了 GP 但栈大小不对（未将 PGSHIFT 从 12 改为 13，栈只有 8KB 而非 16KB）
- 最终正确方案：参考 Linux 内核 `arch/sw/kernel/head.S` 的标准入口序列

**最终正确的 entry.S 实现**：
```asm
kern_entry:
    .prologue 0
    br $27, 1f
1:  ldgp $29, 0($27)       // ← 关键：设置 GP，否则全局变量不可用
    ldi $30, bootstacktop   // ← 设置栈指针
    call $26, kern_init     // ← 调用 C 入口
    .end kern_entry
```

### 问题 5：硬件除法缺失

**现象**：
```
obj/libs/printfmt.o: undefined reference to `__remlu'
obj/libs/printfmt.o: undefined reference to `__divlu'
```

**原因**：SW64 没有硬件除法指令，`do_div` 宏中的 `%` 和 `/` 运算需要编译器导出为 `__remlu`、`__divlu` 等辅助函数，这些函数需要用汇编手动实现。

**解决方案**：从 Linux 内核 `arch/sw_64/lib/divide.S` 编译生成四个 `.o` 文件（`__divlu.o`、`__remlu.o`、`__divwu.o`、`__remwu.o`），拷贝到 `libs/` 目录，并在 Makefile 中链接：

```makefile
KOBJS += libs/__divlu.o
KOBJS += libs/__remlu.o
KOBJS += libs/__divwu.o
KOBJS += libs/__remwu.o
```

## 六、运行验证

### 编译
```bash
make
# 输出：
# + cc kern/init/entry.S
# + cc kern/init/init.c
# + cc kern/libs/stdio.c
# + cc libs/string.c
# + cc libs/printfmt.c
# + cc libs/readline.c
# + ld bin/kernel
```

### 运行
```bash
make qemu
# 或手动：
./qemu-system-sw64 -smp 1 -machine core3 -m 512m -kernel bin/kernel -monitor stdio
```

### 验证打印输出
```bash
# 在 QEMU 控制台中：
pmemsave 0x700000 1000 p.log

# 在另一个终端：
cat p.log
# 预期输出：
# (THU.CST) os is loading ...
```

## 七、实验总结

本次实验完成了将 uCore 最小内核从 RISC-V64 架构移植到 SW64 架构的全过程，核心工作包括：

1. **架构适配**：编译器、链接器、编译选项的全面切换
2. **入口代码改写**：entry.S 从 RISC-V 汇编移植为 SW64 汇编，理解并正确设置 GP 寄存器是实现成功的关键
3. **I/O 重定向**：将基于 OpenSBI 的字符输出改为直接写内核打印区（模拟 Linux 内核的 `sw64_printk` 机制）
4. **链接脚本定制**：适配 SW64 的 ELF 格式、入口地址、GOT 表对齐要求
5. **软件除法**：处理 SW64 无硬件除法的问题

**核心教训**：
- entry.S 的移植是整个实验最关键的步骤，GP 寄存器的正确设置决定了 C 代码能否正常运行。如果 GP 设置错误，全局变量的读写（包括打印缓冲区偏移量）都会访问错误地址，导致 p.log 为空。
- RISC-V 残留代码/文件的清理需要彻底、系统地进行，每个 `#include` 引用链都需要追溯处理。
- 编译器配置不仅包括 GCCPREFIX 的切换，还包括架构特有编译选项（如 `-mcmodel=medany`）的清理。
