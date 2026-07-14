#ifndef __KERN_MM_MMU_H__
#define __KERN_MM_MMU_H__

#define PGSIZE          8192                    // bytes mapped by a page
#define PGSHIFT         13                      // log2(PGSIZE)
#define PPN(pa)         (((uintptr_t)(pa)) >> PGSHIFT)

#endif /* !__KERN_MM_MMU_H__ */
