memory access +
nbFloat32AtOffset: zeroBasedOffset put: value
	"Store 32-bit float at ZERO-based index.
	Note, there is no range checking "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout function: #(void (self, ulong zeroBasedOffset, float32 value)) emit: [:gen |
		| asm |
		
		asm := gen asm.
		asm 
			pop: asm EAX;  "pointer to receiver's first byte"
			pop: asm ECX; "offset"
			pop: asm EDX;
			mov: asm EDX to: asm EAX ptr + asm ECX
	] 