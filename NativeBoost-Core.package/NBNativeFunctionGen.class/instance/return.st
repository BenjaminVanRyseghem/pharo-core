convenience
return
	"Generate a jump to the return label.
	Use this function instead of directly calling #ret, #leave on the assembler if you want to rely on the default cleanup instructions generated by me"
	asm jmp: self returnLabel.