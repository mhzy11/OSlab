#include <defs.h>
#include <stdio.h>
#include <memlayout.h>

/* kernel print buffer offset */
static unsigned long printk_offset = 0;

/* HIGH level console I/O */

/* *
 * cputch - writes a single character @c to the kernel print buffer,
 * and increments the value of counter pointed by @cnt.
 * The kernel print buffer is at [KERNEL_PRINTK_BUFF_BASE, KERNEL_PRINTK_BUFF_BASE+1M).
 * */
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

/* *
 * vcprintf - format a string and writes it to stdout
 *
 * The return value is the number of characters which would be
 * written to stdout.
 *
 * Call this function if you are already dealing with a va_list.
 * Or you probably want cprintf() instead.
 * */
int vcprintf(const char *fmt, va_list ap) {
    int cnt = 0;
    vprintfmt((void *)cputch, &cnt, fmt, ap);
    return cnt;
}

/* *
 * cprintf - formats a string and writes it to stdout
 *
 * The return value is the number of characters which would be
 * written to stdout.
 * */
int cprintf(const char *fmt, ...) {
    va_list ap;
    int cnt;
    va_start(ap, fmt);
    cnt = vcprintf(fmt, ap);
    va_end(ap);
    return cnt;
}

/* cputchar - writes a single character to stdout */
void cputchar(int c) {
    char *buf = (char *)(KERNEL_PRINTK_BUFF_BASE + printk_offset);
    if (printk_offset >= (KERNEL_PRINTK_BUFF_SIZE - 1)) {
        printk_offset = 0;
        buf = (char *)KERNEL_PRINTK_BUFF_BASE;
    }
    *buf = (char)c;
    printk_offset++;
}

/* *
 * cputs- writes the string pointed by @str to stdout and
 * appends a newline character.
 * */
int cputs(const char *str) {
    int cnt = 0;
    char c;
    while ((c = *str++) != '\0') {
        cputch(c, &cnt);
    }
    cputch('\n', &cnt);
    return cnt;
}

/* getchar - reads a single non-zero character from stdin */
int getchar(void) {
    /* Not supported: no console input in minimal kernel */
    return 0;
}
