#ifndef __LIBS_SW64_H__
#define __LIBS_SW64_H__

/* SW64 is a 64-bit architecture */
#define LOG_REGBYTES    3
#define REGBYTES        (1 << LOG_REGBYTES)  /* = 8 */

/* SW64 load/store mnemonics */
#define STORE           stl
#define LOAD            ldl

/*
 * HMC call numbers needed by assembly (trapentry.S).
 * Must stay in sync with sw.h.  Source: arch/sw_64/include/asm/hmcall.h
 */
#define HMC_rti         0x3F

#endif /* !__LIBS_SW64_H__ */
