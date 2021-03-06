tests - native callbacks
createNativeCallback
	"
	The routine must compare the elements, then return one of the following values:
	< 0 elem1 less than elem2 
	0 elem1 equivalent to elem2 
	> 0 elem1 greater than elem2 
	"
	^ NBNativeFunctionGen 
		cdecl: #( int (byte* a, byte * b) )
		emit: [:gen | | asm |
			asm := gen asm.

			asm 
				mov: (gen arg: #b) to: EAX;
				mov: EAX ptr8 to: CL;
				mov: (gen arg: #a) to: EAX;
				mov: EAX ptr8 to: AL;
				sub: AL with: CL;
				movsx: EAX with: AL  "sign-extend the result"
		]
