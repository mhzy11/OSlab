#include <clock.h>
#include <defs.h>
#include <stdio.h>
#include <sw.h>
#include <trap.h>

#define TICK_NUM 100

static void print_ticks(void) {
    cprintf("%d ticks\n", ticks);
#ifdef DEBUG_GRADE
    cprintf("End of Test.\n");
    panic("EOT: kernel seems ok.");
#endif
}

/*
 * trap_init - register kernel entry points with hmcode.
 * Replaces the RISC-V idt_init().
 */
void trap_init(void) {
    extern char entInt[], entIF[];

    /* Tell hmcode our kernel global pointer (r29) */
    register unsigned long gptr __asm__("$29");
    wrkgp(gptr);

    /* Register interrupt handler entry */
    wrent((unsigned long)entInt, 0);

    /* Register exception handler entry */
    wrent((unsigned long)entIF, 3);
}

void print_trapframe(struct trapframe *tf) {
    cprintf("trapframe at %p\n", tf);
    cprintf("  pc  0x%016lx\n", tf->gpr.pc);
    cprintf("  ps  0x%016lx\n", tf->gpr.ps);
    cprintf("  gp  0x%016lx\n", tf->gpr.gp);
    cprintf("  a0  0x%016lx\n", tf->gpr.a0);
    cprintf("  a1  0x%016lx\n", tf->gpr.a1);
    cprintf("  a2  0x%016lx\n", tf->gpr.a2);
}

void print_regs(struct pushregs *gpr) {
    int i;
    uintptr_t *r = (uintptr_t *)gpr;
    for (i = 0; i <= 28; i++) {
        cprintf("  r%-2d    0x%016lx\n", i, r[i]);
    }
}

/*
 * do_entInt - handle interrupts.
 * a0 (r16) holds the interrupt type from hmcode.
 * OSF_A0_INT__CLK = 9 is the timer interrupt.
 */
void do_entInt(struct trapframe *tf) {
    switch (tf->gpr.a0) {
        case 9:   /* OSF_A0_INT__CLK — clock interrupt */
            clock_set_next_event();
            ticks++;
            if (ticks % TICK_NUM == 0) {
                print_ticks();
            }
            break;
        default:
            cprintf("unknown interrupt type %ld\n", tf->gpr.a0);
            print_trapframe(tf);
            break;
    }
}

/*
 * do_entIF - handle exceptions.
 * a0 (r16) holds the exception type from hmcode.
 *   0 = breakpoint
 *   4 = opDEC (illegal instruction)
 */
void do_entIF(struct trapframe *tf) {
    switch (tf->gpr.a0) {
        case 0:   /* breakpoint: hmcode saved return addr, pc-4 = instruction addr */
            cprintf("breakpoint pc = %#lx\n", tf->gpr.pc - 4);
            break;
        case 4:   /* opDEC: QEMU already set pc = instruction addr, no -4 needed */
            cprintf("opDEC  pc = %#lx\n", tf->gpr.pc);
            tf->gpr.pc += 4;
            break;
        default:
            print_trapframe(tf);
            break;
    }
}

/*
 * trap - C-level entry point for all interrupts and exceptions.
 * Dispatches based on the synthetic 'cause' field set by entInt/entIF.
 *   cause == 0 → interrupt
 *   cause != 0 → exception
 */
void trap(struct trapframe *tf) {
    if (tf->gpr.cause == 0) {
        do_entInt(tf);
    } else {
        do_entIF(tf);
    }
}
