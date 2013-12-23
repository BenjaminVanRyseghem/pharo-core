I represent a pure data section in an assembly instruction stream.

Example:
	asm := AJx64Assembler noStackFrame.
	
	"add a raw byte"
	asm db: 16rFF.
	
	"add a raw word"
	asm dw: #[16r34 16r12].
	
	"add a raw double"
	asm dw: #[16r78 16r56 16r34 16r12].
	
	"add a arbitrary sized data section with a byteArray"
	asm data: #[1 2 3 4 5 6 7 8 9 10 11 12 ].