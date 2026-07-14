#ifndef __LIBS_SW_H__
#define __LIBS_SW_H__

/*
 * do_div - emulates hardware division on SW64 (which lacks hardware division).
 * Returns the remainder, sets n to the quotient.
 *
 * The SW64 chip doesn't provide hardware division, so the compiler calls
 * helper functions (__divlu, __remlu, etc.). This macro uses plain C
 * operators so the compiler generates those calls correctly.
 */
#define do_div(n, base)                              \
    ({                                               \
        int __res;                                   \
        __res = ((unsigned long)n) % (unsigned)base; \
        n = ((unsigned long)n) / (unsigned)base;     \
        __res;                                       \
    })

#endif /* !__LIBS_SW_H__ */
