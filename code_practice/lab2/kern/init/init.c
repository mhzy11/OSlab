#include <clock.h>
#include <console.h>
#include <defs.h>
#include <intr.h>
#include <kdebug.h>
#include <kmonitor.h>
#include <pmm.h>
#include <stdio.h>
#include <string.h>
#include <trap.h>

int kern_init(void) __attribute__((noreturn));

int kern_init(void) {
    extern char edata[], end[];
    memset(edata, 0, end - edata);

    cons_init();
    const char *message = "(THU.CST) os is loading ...\n";
    cprintf("%s\n\n", message);

    print_kerninfo();

    trap_init();         // register entInt/entIF with hmcode

    pmm_init();          // init physical memory management (lab2)

    clock_init();        // arm oneshot timer
    intr_enable();       // enable interrupts

    asm volatile("sys_call 0x80"::);      // breakpoint test
    asm volatile(".long 0x7a000000"::);   // illegal instruction test

    while (1)
        ;
}
