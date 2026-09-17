ENTRY(Reset_Handler)
MEMORY
{
	/* According to Datasheet */
	FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 64K
	SRAM (rwx) : ORIGIN = 0x20000000, LENGTH = 20K
}

_estack = ORIGIN(SRAM) + LENGTH(SRAM);

SECTIONS
{
	.text :
	{
		. = ALIGN(4);
		*(.isr_vector_table) /* Must accomodate the vector table to have interrupt service routines, this must be FIRST */
		*(.text)
		*(.rodata)
		. = ALIGN(4);
		_etext = .;
	} > FLASH

	.data :
	{
		. = ALIGN(4);
		_sdata = .;
		*(.data)
		. = ALIGN(4);
		_edata = .;
	} > SRAM AT > FLASH /* VMA AT > LMA (Data section is kept in flash then copied to SRAM. ) */

	.bss :
	{
		. = ALIGN(4);
		_sbss = .;
		*(.bss)
		. = ALIGN(4);
		_ebss = .;
	} > SRAM
}