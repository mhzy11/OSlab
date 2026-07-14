#ifndef __KERN_MM_PMM_H__
#define __KERN_MM_PMM_H__

#include <assert.h>
#include <atomic.h>
#include <defs.h>
#include <memlayout.h>
#include <mmu.h>

struct pmm_manager {
    const char *name;
    void (*init)(void);
    void (*init_memmap)(struct Page *base, size_t n);
    struct Page *(*alloc_pages)(size_t n);
    void (*free_pages)(struct Page *base, size_t n);
    size_t (*nr_free_pages)(void);
    void (*check)(void);
};

extern const struct pmm_manager *pmm_manager;
void pmm_init(void);
struct Page *alloc_pages(size_t n);
void free_pages(struct Page *base, size_t n);
size_t nr_free_pages(void);

#define alloc_page()                alloc_pages(1)
#define free_page(page)             free_pages(page, 1)

extern uint64_t va_pa_offset;

#define PADDR(kva) ({ (uintptr_t)(kva) - va_pa_offset; })
#define KADDR(pa)   ((void *)((unsigned long)(pa) + va_pa_offset))

extern struct Page *pages;
extern size_t npage;
extern const size_t nbase;

static inline ppn_t page2ppn(struct Page *page) { return page - pages + nbase; }
static inline uintptr_t page2pa(struct Page *page) { return page2ppn(page) << PGSHIFT; }
static inline int page_ref(struct Page *page) { return page->ref; }
static inline void set_page_ref(struct Page *page, int val) { page->ref = val; }
static inline int page_ref_inc(struct Page *page) { page->ref += 1; return page->ref; }
static inline int page_ref_dec(struct Page *page) { page->ref -= 1; return page->ref; }

static inline struct Page *pa2page(uintptr_t pa) {
    if (PPN(pa) >= npage) { panic("pa2page called with invalid pa"); }
    return &pages[PPN(pa) - nbase];
}

static inline void flush_tlb() {}

extern char bootstack[], bootstacktop[];

#endif /* !__KERN_MM_PMM_H__ */
