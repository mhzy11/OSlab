#ifndef __KERN_MM_MEMLAYOUT_H__
#define __KERN_MM_MEMLAYOUT_H__

/* ===== SW64 address space ===== */
#define __START_KERNEL_map      0xffffffff80000000UL  /* 512M kernel window */
#define PAGE_OFFSET             0xfff0000000000000UL  /* 128T direct-map window */
#define KERNBASE                0xfff0000000000000UL  /* base for direct-map */

#define PHYSICAL_MEMORY_END     0x20000000UL          /* 512M */
#define PHYSICAL_MEMORY_OFFSET  0xffffffff80000000UL  /* va = pa + this */
#define KERNEL_BEGIN_PADDR      0x00910000UL          /* kernel entry (physical, va - 0xffffffff80000000) */
#define KERNEL_BEGIN_VADDR      0xffffffff80910000UL  /* kernel entry (virtual) */

#define KSTACKPAGE              2
#define KSTACKSIZE              (KSTACKPAGE * PGSIZE)

/* kernel print buffer */
#define KERNEL_PRINTK_BUFF_BASE     0xffffffff80700000UL
#define KERNEL_PRINTK_BUFF_SIZE     0x100000UL

#ifndef __ASSEMBLER__

#include <defs.h>
#include <atomic.h>
#include <list.h>

typedef uintptr_t pte_t;
typedef uintptr_t pde_t;

struct Page {
    int ref;
    volatile uint64_t flags;
    unsigned int property;
    list_entry_t page_link;
};

#define PG_reserved                 0
#define PG_property                 1

#define SetPageReserved(page)       set_bit(PG_reserved, &((page)->flags))
#define ClearPageReserved(page)     clear_bit(PG_reserved, &((page)->flags))
#define PageReserved(page)          test_bit(PG_reserved, &((page)->flags))
#define SetPageProperty(page)       set_bit(PG_property, &((page)->flags))
#define ClearPageProperty(page)     clear_bit(PG_property, &((page)->flags))
#define PageProperty(page)          test_bit(PG_property, &((page)->flags))

#define le2page(le, member)         to_struct((le), struct Page, member)

typedef struct {
    list_entry_t free_list;
    unsigned int nr_free;
} free_area_t;

#endif /* !__ASSEMBLER__ */

#endif /* !__KERN_MM_MEMLAYOUT_H__ */
