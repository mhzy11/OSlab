#!/usr/bin/env python3
"""Generate detailed PNG from Mermaid via mermaid.ink API."""
import base64, urllib.request

CODES = [
    ("1_overview", """---
title: Lab1 SW64 中断与异常处理总览
---
flowchart TB
    subgraph kern["内核初始化 kern_init()"]
        direction TB
        STEP0["memset(edata,0,end-edata) 清零BSS"]
        STEP1["trap_init() wrkgp(gp)+wrent(entInt,0)+wrent(entIF,3)"]
        STEP2["clock_init() wrtimer(1) 启动oneshot定时器"]
        STEP3["intr_enable() swpipl(0) CPU开中断"]
        STEP4["sys_call 0x80 触发断点测试"]
        STEP5[".long 0x7a000000 触发非法指令测试"]
        STEP6["while(1) 死循环等待中断"]
        STEP0 --> STEP1 --> STEP2 --> STEP3 --> STEP4 --> STEP5 --> STEP6
    end

    subgraph hmc["hmcode 固件层"]
        HM_ENTER["host_interrupt1.S 中断入口"]
        HM_EXC["opcdec.S 非法指令入口"]
        VCPUCB["vcpucb 结构体<br/>VC__ENT_INT: 中断入口地址<br/>VC__ENT_IF: 异常入口地址<br/>VC__KGP: 内核全局指针"]
    end

    subgraph asm["汇编入口 kern/trap/trapentry.S"]
        EI["entInt: 中断入口<br/>SAVE_ALL 保存 r0-r28<br/>cause=0 调用 trap()"]
        EF["entIF: 异常入口<br/>SAVE_ALL 保存 r0-r28<br/>cause=3 调用 trap()"]
        RET["__trapret: 返回路径<br/>RESTORE_ALL 恢复 r0-r28<br/>sys_call HMC_rti"]
    end

    subgraph c_dispatch["C语言分发 kern/trap/trap.c"]
        TRAP_FN["trap(tf) 根据 cause 分发"]
        DO_INT["do_entInt(tf) 中断处理<br/>case 9: wrtimer(1) ticks++"]
        DO_IF["do_entIF(tf) 异常处理<br/>case 0: 断点 case 4: 非法指令"]
    end

    STEP1 -->|"HMC 0x37 / 0x34"| VCPUCB
    STEP2 -->|"HMC 0x3B"| HM_ENTER
    STEP3 -->|"HMC 0x35"| HM_ENTER
    HM_ENTER -->|"中断来时查vcpucb"| VCPUCB
    HM_EXC -->|"异常来时查vcpucb"| VCPUCB
    VCPUCB -->|"跳转"| EI
    VCPUCB -->|"跳转"| EF
    EI --> TRAP_FN
    EF --> TRAP_FN
    TRAP_FN -->|"cause=0"| DO_INT
    TRAP_FN -->|"cause!=0"| DO_IF
    DO_INT --> RET
    DO_IF --> RET
    RET -->|"HMC 0x3F"| HM_ENTER"""),

    ("2_interrupt", """---
title: 时钟中断完整处理链路
---
sequenceDiagram
    participant HW as 定时器硬件
    participant CPU as SW64 CPU
    participant HMC as hmcode
    participant ASM as entInt (汇编)
    participant C as trap()→do_entInt (C)
    participant RET as __trapret (汇编)

    Note over HW,CPU: === 第一阶段: 中断产生 ===
    HW->>CPU: 定时器到期 硬件中断信号

    Note over CPU,HMC: === 第二阶段: hmcode中转 ===
    CPU->>HMC: 进入 host_interrupt1.S
    Note over HMC: 1. pri_rcsr CSR__INT_STAT 读中断状态<br/>2. srl+blbs 判断为时钟中断<br/>3. ldi r16=9 OSF_A0_INT__CLK<br/>4. pri_wcsr CSR__INT_CLR 清除中断标志<br/>5. 分配栈空间 ldi sp (0-OSF_FRM__SIZE)(sp)<br/>6. 保存 PS/PC/GP/r16/r17/r18 到栈<br/>7. pri_ldl VC__ENT_INT(vcpucb) 读入口<br/>8. pri_ldl VC__KGP(vcpucb) 读kgp

    HMC->>ASM: pri_ret 跳转entInt 带kgp

    Note over ASM: === 第三阶段: 汇编入口保存寄存器 ===
    Note over ASM: SAVE_ALL 宏:<br/>1. ldi sp -30*8(sp) 分配30槽位<br/>2. STORE r0-r28 依次保存<br/>3. ldi r16=0 cause=中断<br/>4. STORE cause 到 offset29

    ASM->>C: mov sp,r16 (trapframe*) call trap(tf)

    Note over C: === 第四阶段: C语言中断处理 ===
    Note over C: trap(tf): if cause==0 → do_entInt(tf)
    C->>C: switch(tf->gpr.a0)<br/>case 9: 时钟中断
    C->>C: wrtimer(1) 重设定时器 HMC 0x3B
    C->>C: ticks++
    C->>C: if ticks%100==0: cprintf

    C->>RET: 返回

    Note over RET: === 第五阶段: 汇编返回 ===
    Note over RET: RESTORE_ALL 宏:<br/>1. LOAD r0-r28 依次恢复<br/>2. ldi sp 30*8(sp) 回收槽位<br/>3. sys_call HMC_rti (0x3F)

    RET->>HMC: HMC_rti

    Note over HMC: === 第六阶段: hmcode恢复 ===
    Note over HMC: 1. 从栈取回 PS/PC/GP/r16-r18<br/>2. 恢复中断前的CPU状态

    HMC->>CPU: 返回被中断代码
    CPU->>HW: 继续执行 while(1) 等待下次中断"""),

    ("3_exception", """---
title: 异常处理流程 断点 vs 非法指令
---
flowchart TB
    subgraph bp["断点异常 主动触发"]
        BP1["asm volatile('sys_call 0x80')"] --> BP2["CPU执行HMC_bpt 0x80"]
        BP2 --> BP3["hmcode识别为断点"]
        BP3 --> BP4["r16=0 (IF_BREAKPOINT)"]
        BP4 --> BP5["保存PC=返回地址<br/>即sys_call后下一条指令"]
    end

    subgraph ill["非法指令异常 被动触发"]
        IL1["asm volatile('.long 0x7a000000')"] --> IL2["CPU解码失败<br/>0x7a000000 opcode未定义"]
        IL2 --> IL3["QEMU捕获 EXCP_OPCDEC<br/>已打补丁: 不再abort"]
        IL3 --> IL4["QEMU补丁:<br/>i=0xD80<br/>env->csr[EXC_PC]=env->pc-4"]
        IL4 --> IL5["hmcode opcdec.S处理"]
        IL5 --> IL6["r16=4 (IF_OPDEC)"]
        IL6 --> IL7["保存PC=异常指令本身地址"]
    end

    BP5 --> ENTER["entIF 汇编入口"]
    IL7 --> ENTER

    ENTER --> SAVE["SAVE_ALL:<br/>保存 r0-r28 到栈<br/>cause=3 表示异常"]
    SAVE --> TRAP_FN["trap(tf) C函数"]
    TRAP_FN --> CHECK{"tf->gpr.cause == 0 ?"}

    CHECK -->|"否 cause=3 异常"| SWITCH{"tf->gpr.a0 ?"}

    SWITCH -->|"0 断点"| HANDLE_BP["cprintf breakpoint pc = PC-4<br/><br/>PC已经是返回地址<br/>不需要 +4"]
    SWITCH -->|"4 非法指令"| HANDLE_OP["cprintf opDEC pc = PC<br/><br/>PC是异常指令地址<br/>PC += 4 跳过"]
    SWITCH -->|"其他"| HANDLE_UNK["print_trapframe(tf)<br/>打印全部寄存器"]

    HANDLE_BP --> RTI["__trapret:<br/>RESTORE_ALL 恢复 r0-r28<br/>sys_call HMC_rti (0x3F)"]
    HANDLE_OP --> RTI
    HANDLE_UNK --> RTI

    RTI --> RESUME["hmcode恢复PS/PC/GP/r16-r18<br/>返回继续执行"]"""),

    ("4_stack", """---
title: 中断/异常时内核栈布局 struct pushregs
---
block-beta
    columns 2
    A["offset  0 (0x000): r0  "]
    B["offset  1 (0x008): r1  "]
    C["offset  2 (0x010): r2  "]
    D["offset  3 (0x018): r3  "]
    E["offset  4 (0x020): r4  "]
    F["offset  5 (0x028): r5  "]
    G["offset  6 (0x030): r6  "]
    H["offset  7 (0x038): r7  "]
    I["offset  8 (0x040): r8  "]
    J["offset  9 (0x048): r9  "]
    K["offset 10 (0x050): r10"]
    L["offset 11 (0x058): r11"]
    M["offset 12 (0x060): r12"]
    N["offset 13 (0x068): r13"]
    O["offset 14 (0x070): r14"]
    P["offset 15 (0x078): r15"]
    Q["offset 16 (0x080): r16 / a0"]
    R["offset 17 (0x088): r17 / a1"]
    S["offset 18 (0x090): r18 / a2"]
    T["offset 19 (0x098): r19"]
    U["offset 20 (0x0A0): r20"]
    V["offset 21 (0x0A8): r21"]
    W["offset 22 (0x0B0): r22"]
    X["offset 23 (0x0B8): r23"]
    Y["offset 24 (0x0C0): r24"]
    Z["offset 25 (0x0C8): r25"]
    AA["offset 26 (0x0D0): r26 / ra"]
    AB["offset 27 (0x0D8): r27 / pv"]
    AC["offset 28 (0x0E0): r28 / at"]
    AD["offset 29 (0x0E8): cause"]
    AE["offset 30 (0x0F0): PS"]
    AF["offset 31 (0x0F8): PC"]
    AG["offset 32 (0x100): GP / r29"]
    AH["offset 33 (0x108): r16 / a0"]
    AI["offset 34 (0x110): r17 / a1"]
    AJ["offset 35 (0x118): r18 / a2"]

    A -->|"SAVE_ALL"| AC
    AD -->|"entInt/entIF填入"| AD
    AE -->|"hmcode保存"| AJ"""),

    ("5_compare", """---
title: SW64 vs RISC-V 中断机制对比
---
flowchart TB
    subgraph riscv["RISC-V64 中断处理"]
        direction TB
        R_HW["1. 硬件中断到达"] --> R_CSR["2. CPU查stvec CSR<br/>得到__alltraps地址"]
        R_CSR --> R_ASM["3. __alltraps 汇编入口<br/>csrw sscratch,sp<br/>SAVE_ALL 保存32个寄存器<br/>csrr 读sstatus/sepc/scause"]
        R_ASM --> R_C["4. trap(tf) C分发<br/>根据scause区分中断/异常<br/>interrupt_handler/exception_handler"]
        R_C --> R_RET["5. __trapret 返回<br/>RESTORE_ALL 恢复寄存器<br/>sret 特权指令返回"]
    end

    subgraph sw64["SW64 中断处理"]
        direction TB
        S_HW["1. 硬件中断到达"] --> S_HMC["2. CPU进入hmcode<br/>host_interrupt1.S<br/>读CSR__INT_STAT判断类型<br/>r16=中断类型<br/>保存PS/PC/GP/r16-r18到栈"]
        S_HMC --> S_VCP["3. hmcode查vcpucb<br/>读VC__ENT_INT入口地址<br/>读VC__KGP内核GP"]
        S_VCP --> S_ASM["4. entInt 汇编入口<br/>SAVE_ALL 保存r0-r28<br/>cause标记区分中断/异常"]
        S_ASM --> S_C["5. trap(tf) C分发<br/>根据cause区分中断/异常<br/>do_entInt/do_entIF"]
        S_C --> S_RET["6. __trapret 返回<br/>RESTORE_ALL 恢复r0-r28<br/>sys_call HMC_rti (0x3F)"]
        S_RET --> S_HMC2["7. hmcode收尾<br/>从栈恢复PS/PC/GP/r16-r18<br/>真正返回被中断代码"]
    end

    subgraph diff["关键差异"]
        D1["RISC-V: 硬件直接跳内核入口 stvec CSR"]
        D2["SW64: 硬件先跳hmcode hmcode查vcpucb再跳内核"]
        D3["RISC-V: 返回用sret特权指令"]
        D4["SW64: 返回用HMC_rti hmcall hmcode负责最终恢复"]
        D5["RISC-V: 不需要提前注册 写stvec即可"]
        D6["SW64: 必须先wrkgp+wrent注册 hmcode才能找到入口"]
    end

    style S_HMC fill:#ffe0e0
    style S_VCP fill:#ffe0e0
    style S_HMC2 fill:#ffe0e0
    style D2 fill:#fff3cd
    style D4 fill:#fff3cd
    style D6 fill:#fff3cd"""),
]

for name, code in CODES:
    b64 = base64.urlsafe_b64encode(code.encode()).decode().rstrip('=')
    url = f"https://mermaid.ink/img/{b64}?type=png"
    fname = f"{name}.png"
    print(f"Fetching {fname}...", end=' ')
    try:
        req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
        with urllib.request.urlopen(req, timeout=30) as r:
            with open(fname, 'wb') as f:
                f.write(r.read())
            print("OK")
    except Exception as e:
        print(f"FAIL: {e}")
        print(f"  URL length: {len(url)}")

print("Done")
