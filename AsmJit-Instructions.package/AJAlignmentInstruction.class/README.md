I am a pseudo instruction used to align the following instruction to a multiple of a given byte number.

Example:
	asm := AJx64Assembler noStackFrame.
	
	"align the following instruction to a word (2bytes)"
	asm alignWord.
	asm inc: asm RAX.
	
	"align the following instruction to a double (4bytes)"
	asm alignDouble.
	asm inc: asm RAX.
	
	"align the following instruction to a QuadWord (8bytes)"
	asm alignQuad.
	asm inc: asm RAX.
	
	"align the following instruction to a multiple of an arbirary count"
	asm align: 64.
	asm inc: asm RAX.