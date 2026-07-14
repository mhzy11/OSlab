# Lab1 实验报告：SW64 中断与异常处理

## 一、实验目的

1. 了解 CPU 的中断机制，特别是 SW64 平台上 hmcode 对中断的中转处理
2. 掌握 SW64 上内核中断入口注册（`wrent`/`wrkgp`）的方法
3. 了解时钟中断的产生与控制（`wrtimer` oneshot 模式）
4. 掌握中断/异常处理中寄存器的保存与恢复（`SAVE_ALL`/`RESTORE_ALL` + `HMC_rti`）
5. 理解 CPU 异常机制（断点、非法指令），了解 hmcode 对不同异常类型的区分
6. 实现中断和异常处理的完整 C 语言分发框架

## 二、实验环境

- 编译器：`sw_64sw6b-sunway-linux-gnu-gcc`（SW64 交叉编译器）
- 模拟器：`qemu-system-sw64`（core3-hmcode 版本）
- 机器模型：`core3`，单核，512M 内存
- 内核入口地址：`0xffffffff80910000`
- 内核打印区：`[0xffffffff80700000, 0xffffffff80700000 + 1M)`
- HMC 调用号：参考 Linux 内核 `arch/sw_64/include/asm/hmcall.h`

## 三、实验原理

### 3.1 SW64 中断处理流程

SW64 的中断处理与其他架构不同——硬件中断首先进入 **hmcode**（Hypervisor Microcode），hmcode 判断中断类型后跳转到内核注册的入口地址：

```
硬件中断 → hmcode (host_interrupt1.S)
    │
    ├─ 读 CSR__INT_STAT 判断中断类型
    ├─ 保存 PS、PC、GP、r16(a0)、r17(a1)、r18(a2) 到内核栈
    ├─ r16 = 中断类型（OSF_A0_INT__CLK = 9 / INT_MT = 7）
    ├─ 从 vcpucb 读取 entInt 地址和 kgp 值
    │
    └─ 跳转 entInt → SAVE_ALL → trap() → do_entInt()
```

### 3.2 SW64 异常处理流程

异常（断点、非法指令）的入口是 `entIF`：

```
sys_call 0x80 (HMC_bpt)         .long 0x7a000000 (非法指令)
    │                                │
    ▼                                ▼
hmcode (host_interrupt1.S)      QEMU → hmcode (opcdec.S)
    │  r16 = 0                       │  r16 = 4
    ▼                                ▼
entIF → SAVE_ALL → trap() → do_entIF()
```

hmcode 通过 r16（a0）区分异常类型：0 = 断点，4 = 非法指令（opDEC）。内核的 `do_entIF` 根据 `tf->gpr.a0` 分发处理。

### 3.3 内核入口注册机制

```c
void trap_init(void) {
    register unsigned long gptr __asm__("$29");
    wrkgp(gptr);                    // HMC 0x37: 写入内核 GP 到 vcpucb
    wrent((unsigned long)entInt, 0); // HMC 0x34: 注册中断入口
    wrent((unsigned long)entIF, 3);  // HMC 0x34: 注册异常入口
}
```

`wrent` 的第二个参数指定入口类型：0 = 中断(entInt)，3 = 异常(entIF)。hmcode 处理中断/异常时查 vcpucb 找到对应入口并跳转。

### 3.4 时钟中断（oneshot 模式）

```c
void clock_init(void) { wrtimer(1); }              // HMC 0x3B: 启动定时器
void clock_set_next_event(void) { wrtimer(1); }     // 每次中断后重新触发
```

SW64 的时钟是 oneshot 模式——触发一次后停止，必须在中断处理中重新 `wrtimer`。`wrtimer(0)` 关闭定时器。QEMU TCG 模式下定时器频率较低，`wrtimer(1)` 产生最短间隔。

### 3.5 中断使能控制

```c
void intr_enable(void)  { swpipl(0); }    // HMC 0x35: IPL=0，允许全部中断
void intr_disable(void) { swpipl(1); }    // HMC 0x35: IPL=1，禁止中断
```

`swpipl` 控制 CPU 的中断优先级（IPL）。IPL=0 允许所有中断，IPL>0 仅允许更高优先级的中断。

### 3.6 HMC 调用接口

HMC 调用号来自 Linux 内核 `hmcall.h`，使用 `sys_call` 指令：

| HMC | 编号 | 功能 |
|-----|:----:|------|
| `wrent` | 0x34 | 注册内核入口到 vcpucb |
| `swpipl` | 0x35 | 读写 CPU 中断优先级 |
| `wrkgp` | 0x37 | 写入内核 GP（r29）到 vcpucb |
| `wrtimer` | 0x3B | 设置 oneshot 定时器 |
| `rti` | 0x3F | 从异常/中断返回 |
| `bpt` | 0x80 | 断点异常 |

HMC 调用通过 `sys_call <编号>` 指令实现，$16/$17 传参。参考 Linux 内核 `__CALL_HMC_W1`、`__CALL_HMC_W2` 宏的 clobber 约定。

## 四、实验步骤与代码修改

### 4.1 架构文件清理

从 lab0 继承 SW64 基础框架，删除 RISC-V 残留文件：

- 删除 `libs/sbi.c`、`libs/sbi.h`：RISC-V SBI 调用
- 删除 `libs/riscv.h`：RISC-V CSR 宏定义
- 新建 `libs/sw64.h`：SW64 汇编宏（STORE/LOAD/REGBYTES）
- 修改 `libs/printfmt.c`：`#include <riscv.h>` → `#include <sw.h>`
- 修改 `libs/string.c`：移除无效的 `#include <riscv.h>`

### 4.2 Makefile 修改

[Makefile](Makefile) 在 lab0 基础上新增：

```makefile
# 新增目录
KSRCDIR += kern/debug kern/driver kern/trap kern/mm
KINCLUDE += kern/debug/ kern/driver/ kern/trap/ kern/mm/

# 禁止 common symbol（避免 ticks 产生 .scommon 段导致 QEMU 加载失败）
CFLAGS := -G 0 -fno-common -std=gnu99 -Wno-unused -Werror

# 链接除法辅助文件
KOBJS += libs/__divlu.o libs/__remlu.o libs/__divwu.o libs/__remwu.o
```

`-fno-common` 是关键——`clock.c` 和 `trap.c` 中 `ticks` 是 tentative definition，默认产生 common 符号进入 `.scommon` 段。该段不在 linker script 中，被自动附加到 LOAD segment 末尾，会导致 QEMU 的 ELF loader 加载失败。

### 4.3 SW64 汇编入口实现

[kern/trap/trapentry.S](kern/trap/trapentry.S) 实现中断和异常入口：

**entInt — 中断入口**：
```asm
entInt:
    SAVE_ALL                            # 保存 r0~r28
    ldi   $16, 0($31)                   # cause = 0（中断）
    STORE $16, 29*REGBYTES($30)         # 填入 pushregs.cause
    ldi   $26, __trapret                # 返回地址
    mov   $30, $16                      # 参数 = sp（trapframe 指针）
    call  $31, trap                     # 调用 C 分发函数
```

**entIF — 异常入口**：
```asm
entIF:
    SAVE_ALL
    ldi   $16, 3($31)                   # cause = 3（异常）
    STORE $16, 29*REGBYTES($30)
    ldi   $26, __trapret
    mov   $30, $16
    call  $31, trap
```

**SAVE_ALL 宏**：
```asm
.macro SAVE_ALL
    ldi   $30, -30*REGBYTES($30)        # 分配 30 槽位
    STORE $0,  0*REGBYTES($30)          # 保存 r0~r28
    STORE $1,  1*REGBYTES($30)
    ...                                  # r2~r28 依次保存
    STORE $28, 28*REGBYTES($30)
    # 偏移 29: cause（由 entInt/entIF 填入）
    # 偏移 30-35: hmcode 已保存的 PS/PC/GP/r16/r17/r18
.endm
```

hmcode 在跳转前已保存 6 个槽位（PS、PC、GP、r16-r18，共 48 字节）到栈上。SAVE_ALL 分配 30 槽位保存 r0-r28 和 cause，总计 36 槽位正好映射到 `struct pushregs`。

**__trapret — 返回路径**：
```asm
__trapret:
    RESTORE_ALL                         # 恢复 r0~r28
    sys_call HMC_rti                    # HMC 0x3F: hmcode 恢复 PS/PC/GP 并返回
```

### 4.4 寄存器保存布局（trap.h）

[kern/trap/trap.h](kern/trap/trap.h) 定义了栈上寄存器布局 `struct pushregs`：

| 偏移(槽) | 字段 | 保存者 | 说明 |
|:--------:|------|:------:|------|
| 0-28 | r0~r28 | SAVE_ALL | 通用寄存器 |
| 29 | cause | entInt/entIF 填入 | 区分中断(0)/异常(3) |
| 30 | PS | hmcode | 处理器状态 |
| 31 | PC | hmcode | 异常/中断地址 |
| 32 | GP | hmcode | 全局指针 r29 |
| 33-35 | r16~r18 | hmcode | a0(类型)/a1/a2 |

### 4.5 C 语言中断/异常分发

[kern/trap/trap.c](kern/trap/trap.c) 实现：

**入口注册**：
```c
void trap_init(void) {
    register unsigned long gptr __asm__("$29");
    wrkgp(gptr);
    wrent((unsigned long)entInt, 0);
    wrent((unsigned long)entIF, 3);
}
```

**分发函数**：
```c
void trap(struct trapframe *tf) {
    if (tf->gpr.cause == 0)
        do_entInt(tf);     // 中断
    else
        do_entIF(tf);      // 异常
}
```

**中断处理**：
```c
void do_entInt(struct trapframe *tf) {
    switch (tf->gpr.a0) {
        case 9:            // 时钟中断
            clock_set_next_event();    // 重新触发
            ticks++;
            if (ticks % 100 == 0)
                print_ticks();
            break;
    }
}
```

**异常处理**（注意 PC 处理差异）：
```c
void do_entIF(struct trapframe *tf) {
    switch (tf->gpr.a0) {
        case 0:            // 断点：hmcode 已保存返回地址，不需 +4
            cprintf("breakpoint pc = %#lx\n", tf->gpr.pc - 4);
            break;
        case 4:            // 非法指令：QEMU 保存异常地址，需 +4 跳过
            cprintf("opDEC  pc = %#lx\n", tf->gpr.pc);
            tf->gpr.pc += 4;
            break;
    }
}
```

断点和非法指令的 PC 处理不同——断点 (`sys_call 0x80`) 的 hmcode 保存的是返回地址（已在指令之后），非法指令的 QEMU 补丁保存的是异常指令本身地址（需 +4 跳过）。

### 4.6 驱动层实现

[clock.c](kern/driver/clock.c)：`wrtimer` 封装
[intr.c](kern/driver/intr.c)：`swpipl` 封装
[sw.h](libs/sw.h)：所有 HMC 调用 inline 函数，参考 Linux `__CALL_HMC_W1`/`__CALL_HMC_W2` 宏的 clobber 约定

### 4.7 QEMU 非法指令补丁

修改 QEMU 源码 `target/sw64/helper.c`：

```diff
     case EXCP_OPCDEC:
-        cpu_abort(cs, "ILLEGAL INSN");
+        i = 0xD80;
+        env->csr[EXC_PC] = env->pc - 4;
         break;
```

### 4.8 init.c 集成测试

```c
int kern_init(void) {
    memset(edata, 0, end - edata);
    cprintf("(THU.CST) os is loading ...\n\n");

    trap_init();                        // 注册 entInt/entIF
    clock_init();                       // 启动 oneshot 定时器
    intr_enable();                      // 开中断

    asm volatile("sys_call 0x80"::);    // 触发断点异常
    asm volatile(".long 0x7a000000"::); // 触发非法指令异常

    while (1);                          // 等待时钟中断
}
```

## 五、遇到的问题与解决方案

### 问题 1：.scommon 段导致 QEMU 内核加载失败

**现象**：make 编译通过，QEMU 启动后无输出，`pmemsave` 无 `p.log`。

**定位**：对比 lab0 和 lab1 的 ELF program headers，发现 lab1 的 LOAD segment 多了 `.scommon` 段（MemSiz 多 8 字节）。该段由 `clock.c` 和 `trap.c` 中 `volatile size_t ticks` 的 tentative definition 产生。

**解决**：Makefile 加 `-fno-common`，同时将 `trap.c` 中重复的 `ticks` 定义改为 `extern`（由 `clock.h` 提供声明），只保留 `clock.c` 中一份定义。

### 问题 2：断点处理导致非法指令被跳过

**现象**：p.log 中只有 `breakpoint pc = ...`，没有 `opDEC pc = ...`。

**定位**：`do_entIF` 的 `case 0`（断点）中多加了 `tf->gpr.pc += 4`。但 hmcode 对 `sys_call 0x80` 保存的是返回地址（已在指令之后），加 4 后跳过了一条指令，把紧随其后的非法指令也跳过去了。

**解决**：断点 case 去掉 `tf->gpr.pc += 4`，仅保留非法指令 case 的 `tf->gpr.pc += 4`。

### 问题 3：非法指令 PC 显示错误

**现象**：`opDEC pc = ffffffff809100c8`，与 breakpoint 同地址。

**定位**：`do_entIF` 中非法指令 case 打印 `tf->gpr.pc - 4`，但 QEMU 补丁已把 PC 设为 `env->pc - 4`（即异常指令本身地址），再减 4 多减了一次。

**解决**：非法指令 case 改为打印 `tf->gpr.pc`（不下减 4），正确显示 `opDEC pc = ffffffff809100cc`（比断点地址多 4 字节）。

## 六、运行验证

### 编译
```bash
make clean && make
```

### 运行
```bash
make qemu
```

### 验证输出
```bash
# 在 QEMU monitor 中：
pmemsave 0x700000 1000 p.log
quit
cat p.log
```

### 验证结果

```
(THU.CST) os is loading ...

++ setup timer interrupts
breakpoint pc = ffffffff809100c8
opDEC  pc = ffffffff809100cc
100 ticks
200 ticks
300 ticks
400 ticks
...
```

| 输出 | 验证内容 |
|------|----------|
| `(THU.CST) os is loading ...` | 内核正常启动 |
| `++ setup timer interrupts` | 时钟初始化成功 |
| `breakpoint pc = ffffffff809100c8` | 断点异常捕获（`sys_call 0x80`） |
| `opDEC pc = ffffffff809100cc` | 非法指令异常捕获（`.long 0x7a000000`） |
| `100 ticks → 200 ticks → ...` | 时钟中断持续触发，oneshot 重设正常 |

断点和非法指令地址相差 4 字节（紧邻的两条指令），中断计数持续递增，证明寄存器保存/恢复（SAVE_ALL/RESTORE_ALL + HMC_rti）正确无误。

## 七、实验总结

本次实验在 lab0 SW64 最小内核基础上，实现了完整的中断和异常处理框架：

1. **HMC 接口封装**：实现 `wrent`/`wrkgp`/`wrtimer`/`swpipl`/`rti` 的 inline assembly 封装，调用号来自 Linux 内核 `hmcall.h`

2. **汇编入口**：实现 `entInt`/`entIF` 入口，`SAVE_ALL` 保存寄存器，`__trapret` + `HMC_rti` 返回

3. **中断分发**：`trap()` 根据 `cause` 字段分发中断/异常，`do_entInt` 处理时钟中断，`do_entIF` 处理断点和非法指令

4. **时钟驱动**：`wrtimer` oneshot 模式，每次中断后重新触发

5. **问题排查**：`.scommon` 段 QEMU 兼容性、断点/非法指令的 PC 处理差异

**核心理解**：SW64 的中断机制与 RISC-V 本质不同——硬件不直接跳转内核入口，而是通过 hmcode 中转。hmcode 负责保存部分上下文、区分中断类型，内核通过 `wrent` 注册入口、`wrkgp` 注册 GP 来建立与 hmcode 的约定。
