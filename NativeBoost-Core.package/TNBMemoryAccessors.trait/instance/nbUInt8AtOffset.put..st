memory access +
nbUInt8AtOffset: zeroBasedOffset  put: value
	
	"Store unsigned 8-bit integer into memory at (receiver's address + ZERO-based offset) using native byte order.
	Note, there is no range checking "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout function: #(void (self, ulong zeroBasedOffset, uint8 value)) emit: [:gen |
		| asm |
		
		asm := gen asm.
		asm 
			pop: asm EAX;  "pointer to receiver's first byte"
			pop: asm ECX; "offset"
			pop: asm EDX; "value"
			mov: asm DL to: asm EAX ptr8 + asm ECX
	] 