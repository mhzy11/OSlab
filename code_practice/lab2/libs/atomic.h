#ifndef __LIBS_ATOMIC_H__
#define __LIBS_ATOMIC_H__

/* Simple bit operations for lab2 — no atomic instructions needed since
 * alloc_pages/free_pages are protected by interrupt disable (sync.h).
 */

#define BITS_PER_LONG 64
#define BIT_MASK(nr)  (1UL << ((nr) % BITS_PER_LONG))
#define BIT_WORD(nr)  ((nr) / BITS_PER_LONG)

static inline void set_bit(int nr, volatile void *addr) {
    unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
    *p |= BIT_MASK(nr);
}

static inline void clear_bit(int nr, volatile void *addr) {
    unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
    *p &= ~BIT_MASK(nr);
}

static inline bool test_bit(int nr, volatile void *addr) {
    unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
    return (*p & BIT_MASK(nr)) != 0;
}

static inline void change_bit(int nr, volatile void *addr) {
    unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
    *p ^= BIT_MASK(nr);
}

#endif /* !__LIBS_ATOMIC_H__ */
