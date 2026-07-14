/* Simple linker script for the ucore kernel on SW64.
   See the GNU ld 'info' manual ("info ld") to learn the syntax. */

OUTPUT_FORMAT("elf64-sw_64")
OUTPUT_ARCH(sw_64)
ENTRY(kern_entry)

BASE_ADDRESS = 0xffffffff80910000;

SECTIONS
{
    /* Load the kernel at this address: "." means the current address */
    . = BASE_ADDRESS;

    .text : {
        *(.text.kern_entry .text .stub .text.* .gnu.linkonce.t.*)
    }

    PROVIDE(etext = .); /* Define the 'etext' symbol to this value */

    .rodata : {
        *(.rodata .rodata.* .gnu.linkonce.r.*)
    }

    /* Adjust the address for the data segment to the next page (8K for SW64) */
    . = ALIGN(0x2000);

    /* Global Offset Table - required for GP-relative addressing on SW64 */
    .got : {
        *(.got)
        *(.got.*)
    }

    /* The data segment */
    .data : {
        *(.data)
        *(.data.*)
    }

    .sdata : {
        *(.sdata)
        *(.sdata.*)
    }

    PROVIDE(edata = .);

    .bss : {
        *(.bss)
        *(.bss.*)
        *(.sbss*)
    }

    PROVIDE(end = .);

    /DISCARD/ : {
        *(.eh_frame .note.GNU-stack)
        *(.mdebug)
        *(.note)
        *(.stab)
        *(.stabstr)
        *(.stab.excl)
        *(.stab.exclstr)
        *(.stab.index)
        *(.stab.indexstr)
        *(.debug)
        *(.line)
        *(.debug_srcinfo)
        *(.debug_sfnames)
        *(.debug_aranges)
        *(.debug_pubnames)
        *(.debug_info)
        *(.debug_abbrev)
        *(.debug_line)
        *(.debug_frame)
        *(.debug_str)
        *(.debug_loc)
        *(.debug_macinfo)
        *(.debug_pubtypes)
        *(.debug_ranges)
        *(.debug_weaknames)
        *(.debug_funcnames)
        *(.debug_typenames)
        *(.debug_varnames)
        *(.debug_gnu_pubnames)
        *(.debug_gnu_pubtypes)
        *(.debug_types)
        *(.debug_addr)
        *(.debug_line_str)
        *(.debug_loclists)
        *(.debug_macro)
        *(.debug_names)
        *(.debug_rnglists)
        *(.debug_str_offsets)
        *(.comment)
        *(.symtab)
        *(.strtab)
        *(.shstrtab)
        *(.gnu.version*)
    }
}
