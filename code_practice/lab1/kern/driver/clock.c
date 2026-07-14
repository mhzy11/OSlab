#include <clock.h>
#include <defs.h>
#include <stdio.h>
#include <sw.h>

volatile size_t ticks;

/*
 * clock_init - arm the oneshot timer.
 * On SW64, wrtimer(delta) triggers a clock interrupt once after delta.
 * Any non-zero delta works in QEMU TCG mode.
 */
void clock_init(void) {
    wrtimer(1);   /* non-zero value arms the timer */
    ticks = 0;
    cprintf("++ setup timer interrupts\n");
}

/*
 * clock_set_next_event - re-arm the timer for the next tick.
 * Must be called from the clock interrupt handler because
 * the SW64 timer is oneshot.
 */
void clock_set_next_event(void) {
    wrtimer(1);
}
