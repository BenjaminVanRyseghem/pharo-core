emitting code
coerceReturnValue: gen
	| asm |
	"convert signed short to ST integer"
	asm := gen asm.
	
	asm movsx: asm EAX with: asm AX.

	gen proxy integerObjectOf: asm EAX.
 
	