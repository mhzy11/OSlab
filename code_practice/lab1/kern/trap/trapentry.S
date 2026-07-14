#include <sw64.h>

    .macro SAVE_ALL
    ldi $30, -30*REGBYTES($30)       # allocate 30 slots (r0-r28 + cause)
    STORE $0,  0*REGBYTES($30)
    STORE $1,  1*REGBYTES($30)
    STORE $2,  2*REGBYTES($30)
    STORE $3,  3*REGBYTES($30)
    STORE $4,  4*REGBYTES($30)
    STORE $5,  5*REGBYTES($30)
    STORE $6,  6*REGBYTES($30)
    STORE $7,  7*REGBYTES($30)
    STORE $8,  8*REGBYTES($30)
    STORE $9,  9*REGBYTES($30)
    STORE $10, 10*REGBYTES($30)
    STORE $11, 11*REGBYTES($30)
    STORE $12, 12*REGBYTES($30)
    STORE $13, 13*REGBYTES($30)
    STORE $14, 14*REGBYTES($30)
    STORE $15, 15*REGBYTES($30)
    STORE $16, 16*REGBYTES($30)
    STORE $17, 17*REGBYTES($30)
    STORE $18, 18*REGBYTES($30)
    STORE $19, 19*REGBYTES($30)
    STORE $20, 20*REGBYTES($30)
    STORE $21, 21*REGBYTES($30)
    STORE $22, 22*REGBYTES($30)
    STORE $23, 23*REGBYTES($30)
    STORE $24, 24*REGBYTES($30)
    STORE $25, 25*REGBYTES($30)
    STORE $26, 26*REGBYTES($30)
    STORE $27, 27*REGBYTES($30)
    STORE $28, 28*REGBYTES($30)
    # offset 29 (cause) left blank, filled by entInt / entIF
    # offsets 30-35 already contain hmcode-saved ps,pc,gp,r16,r17,r18
    .endm

    .macro RESTORE_ALL
    LOAD $0,  0*REGBYTES($30)
    LOAD $1,  1*REGBYTES($30)
    LOAD $2,  2*REGBYTES($30)
    LOAD $3,  3*REGBYTES($30)
    LOAD $4,  4*REGBYTES($30)
    LOAD $5,  5*REGBYTES($30)
    LOAD $6,  6*REGBYTES($30)
    LOAD $7,  7*REGBYTES($30)
    LOAD $8,  8*REGBYTES($30)
    LOAD $9,  9*REGBYTES($30)
    LOAD $10, 10*REGBYTES($30)
    LOAD $11, 11*REGBYTES($30)
    LOAD $12, 12*REGBYTES($30)
    LOAD $13, 13*REGBYTES($30)
    LOAD $14, 14*REGBYTES($30)
    LOAD $15, 15*REGBYTES($30)
    LOAD $16, 16*REGBYTES($30)
    LOAD $17, 17*REGBYTES($30)
    LOAD $18, 18*REGBYTES($30)
    LOAD $19, 19*REGBYTES($30)
    LOAD $20, 20*REGBYTES($30)
    LOAD $21, 21*REGBYTES($30)
    LOAD $22, 22*REGBYTES($30)
    LOAD $23, 23*REGBYTES($30)
    LOAD $24, 24*REGBYTES($30)
    LOAD $25, 25*REGBYTES($30)
    LOAD $26, 26*REGBYTES($30)
    LOAD $27, 27*REGBYTES($30)
    LOAD $28, 28*REGBYTES($30)
    ldi $30, 30*REGBYTES($30)        # deallocate SAVE_ALL area
    .endm

    .globl entInt
    .align 4
    .ent entInt
entInt:
    SAVE_ALL
    ldi $16, 0($31)                  # cause = 0 (interrupt)
    STORE $16, 29*REGBYTES($30)
    ldi $26, __trapret               # set return address
    mov $30, $16                     # arg0 = sp (struct trapframe *)
    call $31, trap
    .end entInt

    .globl entIF
    .align 4
    .ent entIF
entIF:
    SAVE_ALL
    ldi $16, 3($31)                  # cause = 3 (exception)
    STORE $16, 29*REGBYTES($30)
    ldi $26, __trapret               # set return address
    mov $30, $16                     # arg0 = sp
    call $31, trap
    .end entIF

    .globl __trapret
    .align 4
    .ent __trapret
__trapret:
    RESTORE_ALL
    sys_call HMC_rti
    .end __trapret
