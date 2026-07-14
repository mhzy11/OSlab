#ifndef __KERN_TRAP_TRAP_H__
#define __KERN_TRAP_TRAP_H__

#include <defs.h>

/*
 * struct pushregs - registers saved on the kernel stack during
 * an interrupt or exception. The layout mirrors struct pt_regs
 * from the Linux/SW64 kernel, plus a synthetic "cause" field
 * that lets entInt / entIF tell trap() what kind of entry this is.
 *
 * Offsets (in REGBYTES units from $sp after SAVE_ALL):
 *    0..28   r0 ~ r28
 *   29       cause       (synthetic — filled by entInt / entIF)
 *   30       ps          (saved by hmcode: OSF_FRM__PS)
 *   31       pc          (saved by hmcode: OSF_FRM__PC)
 *   32       gp          (saved by hmcode: OSF_FRM__GP, r29)
 *   33..35   r16 ~ r18   (saved by hmcode: OSF_FRM__A0 ~ OSF_FRM__A2)
 *   36..44   r19 ~ r28   (saved by SAVE_ALL)
 *           total = 45 slots = 360 bytes
 */
struct pushregs {
    uintptr_t r0;
    uintptr_t r1;
    uintptr_t r2;
    uintptr_t r3;
    uintptr_t r4;
    uintptr_t r5;
    uintptr_t r6;
    uintptr_t r7;
    uintptr_t r8;
    uintptr_t r9;
    uintptr_t r10;
    uintptr_t r11;
    uintptr_t r12;
    uintptr_t r13;
    uintptr_t r14;
    uintptr_t r15;
    uintptr_t a0;        /* r16 — interrupt/exception type from hmcode */
    uintptr_t a1;        /* r17 — vector */
    uintptr_t a2;        /* r18 — pointer to logout */
    uintptr_t r19;
    uintptr_t r20;
    uintptr_t r21;
    uintptr_t r22;
    uintptr_t r23;
    uintptr_t r24;
    uintptr_t r25;
    uintptr_t r26;
    uintptr_t r27;
    uintptr_t r28;
    uintptr_t cause;     /* synthetic: 0 = interrupt, non-zero = exception */
    uintptr_t ps;        /* processor status / interrupt priority */
    uintptr_t pc;        /* exception / interrupt PC */
    uintptr_t gp;        /* r29 — global pointer */
    uintptr_t r16;       /* duplicate copies saved by hmcode */
    uintptr_t r17;
    uintptr_t r18;
};

struct trapframe {
    struct pushregs gpr;
};

void trap(struct trapframe *tf);
void trap_init(void);
void print_trapframe(struct trapframe *tf);
void print_regs(struct pushregs *gpr);

#endif /* !__KERN_TRAP_TRAP_H__ */
