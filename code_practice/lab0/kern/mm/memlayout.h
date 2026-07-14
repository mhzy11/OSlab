#ifndef __KERN_MM_MEMLAYOUT_H__
#define __KERN_MM_MEMLAYOUT_H__

#define KSTACKPAGE          2                           // # of pages in kernel stack
#define KSTACKSIZE          (KSTACKPAGE * PGSIZE)       // sizeof kernel stack

/* kernel print buffer: virtual address 0xffffffff80700000 maps to physical 0x700000 */
#define KERNEL_PRINTK_BUFF_BASE     0xffffffff80700000UL
#define KERNEL_PRINTK_BUFF_SIZE     0x100000UL           // 1MB

#endif /* !__KERN_MM_MEMLAYOUT_H__ */
