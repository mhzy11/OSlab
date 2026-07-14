#include <mmu.h>
#include <memlayout.h>

    .section .text.kern_entry,"ax",%progbits
    .globl kern_entry
    .ent kern_entry
kern_entry:
    .prologue 0
    br $27, 1f
1:  ldgp $29, 0($27)
    ldi $30, bootstacktop
    call $26, kern_init
    .end kern_entry

.section .data
    .align PGSHIFT
    .global bootstack
bootstack:
    .space KSTACKSIZE
    .global bootstacktop
bootstacktop:
