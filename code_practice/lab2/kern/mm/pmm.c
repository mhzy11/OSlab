#include <best_fit_pmm.h>
#include <defs.h>
#include <error.h>
#include <memlayout.h>
#include <mmu.h>
#include <pmm.h>
#include <stdio.h>
#include <string.h>
#include <../sync/sync.h>

struct Page *pages;
size_t npage = 0;
uint64_t va_pa_offset;
const size_t nbase = (0xffffffff80910000UL - __START_KERNEL_map) / PGSIZE;
/* NODE0_START / PGSIZE = 0x910000 / 8192 */

const struct pmm_manager *pmm_manager;

static void check_alloc_page(void);

static void init_pmm_manager(void) {
    pmm_manager = &best_fit_pmm_manager;
    cprintf("memory management: %s\n", pmm_manager->name);
    pmm_manager->init();
}

static void init_memmap(struct Page *base, size_t n) {
    pmm_manager->init_memmap(base, n);
}

struct Page *alloc_pages(size_t n) {
    struct Page *page = NULL;
    bool intr_flag;
    local_intr_save(intr_flag);
    { page = pmm_manager->alloc_pages(n); }
    local_intr_restore(intr_flag);
    return page;
}

void free_pages(struct Page *base, size_t n) {
    bool intr_flag;
    local_intr_save(intr_flag);
    { pmm_manager->free_pages(base, n); }
    local_intr_restore(intr_flag);
}

size_t nr_free_pages(void) {
    size_t ret;
    bool intr_flag;
    local_intr_save(intr_flag);
    { ret = pmm_manager->nr_free_pages(); }
    local_intr_restore(intr_flag);
    return ret;
}

static void page_init(void) {
    va_pa_offset = PHYSICAL_MEMORY_OFFSET;

    extern char end[];
    uint64_t maxpa = PHYSICAL_MEMORY_END;

    npage = maxpa / PGSIZE;
    pages = (struct Page *)ROUNDUP((void *)end, PGSIZE);

    for (size_t i = 0; i < npage - nbase; i++) {
        SetPageReserved(pages + i);
    }

    uintptr_t freemem = PADDR((uintptr_t)pages + sizeof(struct Page) * (npage - nbase));
    uint64_t mem_begin = ROUNDUP(freemem, PGSIZE);
    uint64_t mem_end = ROUNDDOWN(PHYSICAL_MEMORY_END, PGSIZE);

    cprintf("physcial memory map:\n");
    cprintf("  memory: 0x%016lx, [0x%016lx, 0x%016lx].\n",
            mem_end - mem_begin, mem_begin, mem_end - 1);

    if (freemem < mem_end) {
        init_memmap(pa2page(mem_begin), (mem_end - mem_begin) / PGSIZE);
    }
}

void pmm_init(void) {
    init_pmm_manager();
    page_init();
    check_alloc_page();
}

static void check_alloc_page(void) {
    pmm_manager->check();
    cprintf("check_alloc_page() succeeded!\n");
}
