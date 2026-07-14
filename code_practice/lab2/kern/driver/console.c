#include <console.h>
#include <memlayout.h>

/* kernel print buffer offset */
static unsigned long printk_offset = 0;

/* kbd_intr - try to feed input characters from keyboard */
void kbd_intr(void) {}

/* serial_intr - try to feed input characters from serial port */
void serial_intr(void) {}

/* cons_init - initializes the console devices */
void cons_init(void) {}

/*
 * cons_putc - write a character to the kernel print buffer.
 * QEMU monitors [KERNEL_PRINTK_BUFF_BASE .. +1M) and forwards
 * written bytes to the host console.
 */
void cons_putc(int c) {
    char *buf = (char *)(KERNEL_PRINTK_BUFF_BASE + printk_offset);
    if (printk_offset >= (KERNEL_PRINTK_BUFF_SIZE - 1)) {
        printk_offset = 0;
        buf = (char *)KERNEL_PRINTK_BUFF_BASE;
    }
    *buf = (char)c;
    printk_offset++;
}

/* cons_getc - not supported in minimal kernel */
int cons_getc(void) {
    return 0;
}
