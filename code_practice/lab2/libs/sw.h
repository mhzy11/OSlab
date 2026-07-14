#ifndef __LIBS_SW_H__
#define __LIBS_SW_H__

/*
 * do_div - emulates hardware division on SW64 (which lacks hardware division).
 * Returns the remainder, sets n to the quotient.
 */
#define do_div(n, base)                              \
    ({                                               \
        int __res;                                   \
        __res = ((unsigned long)n) % (unsigned)base; \
        n = ((unsigned long)n) / (unsigned)base;     \
        __res;                                       \
    })

/*
 * HMC call numbers — from arch/sw_64/include/asm/hmcall.h (Linux 5.x).
 * Shared by both C and assembly code.
 */
/* Kernel-level HMC routines (0x00–0x3F) */
#define HMC_wrent      0x34
#define HMC_swpipl     0x35
#define HMC_wrkgp      0x37
#define HMC_wrtimer    0x3B
#define HMC_rti        0x3F

/* User-level HMC routines (0x80–0xBF), see uapi/asm/hmcall.h */
#define HMC_bpt        0x80

#ifndef __ASSEMBLY__

/*
 * wrent - write kernel entry point to vcpucb.
 *   entry ($16) — address of the kernel handler
 *   type  ($17) — entry type (0 = entInt, 3 = entIF, …)
 */
static inline void wrent(unsigned long entry, unsigned long type)
{
    register unsigned long __r16 __asm__("$16") = entry;
    register unsigned long __r17 __asm__("$17") = type;
    __asm__ __volatile__(
        "sys_call %2 # wrent"
        : "=r"(__r16), "=r"(__r17)
        : "i"(HMC_wrent), "0"(__r16), "1"(__r17)
        : "$1", "$22", "$23", "$24", "$25");
}

/*
 * wrkgp - write kernel global pointer (r29) to vcpucb.
 */
static inline void wrkgp(unsigned long gptr)
{
    register unsigned long __r16 __asm__("$16") = gptr;
    __asm__ __volatile__(
        "sys_call %1 # wrkgp"
        : "=r"(__r16)
        : "i"(HMC_wrkgp), "0"(__r16)
        : "$1", "$22", "$23", "$24", "$25");
}

/*
 * wrtimer - set oneshot timer.  Non-zero delta arms the timer;
 * after the interrupt fires the timer stops (oneshot mode).
 */
static inline void wrtimer(unsigned long delta)
{
    register unsigned long __r16 __asm__("$16") = delta;
    __asm__ __volatile__(
        "sys_call %1 # wrtimer"
        : "=r"(__r16)
        : "i"(HMC_wrtimer), "0"(__r16)
        : "$1", "$22", "$23", "$24", "$25");
}

/*
 * swpipl — get/set the CPU interrupt priority level.
 * ipl = 0  → all interrupts enabled
 * ipl > 0  → only interrupts with higher priority than ipl are taken.
 * Returns the previous ipl.
 */
static inline unsigned long swpipl(unsigned long ipl)
{
    register unsigned long __r0 __asm__("$0");
    register unsigned long __r16 __asm__("$16") = ipl;
    __asm__ __volatile__(
        "sys_call %2 # swpipl"
        : "=r"(__r16), "=r"(__r0)
        : "i"(HMC_swpipl), "0"(__r16)
        : "$1", "$22", "$23", "$24", "$25");
    return __r0;
}

/* local_irq_enable - enable CPU interrupts */
static inline void local_irq_enable(void)
{
    swpipl(0);
}

/* local_irq_disable - disable CPU interrupts */
static inline void local_irq_disable(void)
{
    swpipl(1);
}

#endif /* !__ASSEMBLY__ */

#endif /* !__LIBS_SW_H__ */
