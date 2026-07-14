#include <clock.h>
#include <console.h>
#include <defs.h>
#include <intr.h>
#include <stdio.h>
#include <string.h>
#include <trap.h>

int kern_init(void) __attribute__((noreturn));
static void lab1_switch_test(void);

int kern_init(void) {
    extern char edata[], end[];
    memset(edata, 0, end - edata);

    cons_init();  // init the console

    const char *message = "(THU.CST) os is loading ...\n";
    cprintf("%s\n\n", message);

    trap_init();   // register kernel entry points with hmcode

    clock_init();  // arm the oneshot timer

    intr_enable(); // enable CPU interrupts (local_irq_enable)

    /* Trigger breakpoint test — sys_call 0x80 is HMC_bpt */
    asm volatile("sys_call 0x80"::);

    /* Trigger illegal instruction test */
    asm volatile(".long 0x7a000000"::);

    // LAB1: CHALLENGE 1 If you try to do it, uncomment lab1_switch_test()
    // user/kernel mode switch test
    // lab1_switch_test();

    /* do nothing */
    while (1)
        ;
}

static void lab1_print_cur_status(void) {
    static int round = 0;
    round++;
}

static void lab1_switch_to_user(void) {
    // LAB1 CHALLENGE 1 : TODO
}

static void lab1_switch_to_kernel(void) {
    // LAB1 CHALLENGE 1 : TODO
}

static void lab1_switch_test(void) {
    lab1_print_cur_status();
    cprintf("+++ switch to  user  mode +++\n");
    lab1_switch_to_user();
    lab1_print_cur_status();
    cprintf("+++ switch to kernel mode +++\n");
    lab1_switch_to_kernel();
    lab1_print_cur_status();
}
