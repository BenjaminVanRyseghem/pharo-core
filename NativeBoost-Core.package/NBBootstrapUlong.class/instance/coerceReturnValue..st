emitting code
coerceReturnValue: gen
	| args result asm proxy |
	asm := gen asm.
	proxy := gen proxy.
	args := gen methodArgs.
	
	result := gen reserveTemp.
	asm mov: asm EAX to: result.
	
	"load a returnValueBuffer method argument oop"
	(NBSTMethodArgument new stackIndex: (args size - (args indexOf: #returnValueBuffer)))
		emitLoad: gen.
	proxy varBytesFirstFieldOf: asm EAX.  "EAX - address , where to store result "
	asm mov: result to: asm ECX.
	asm mov: asm ECX to: asm EAX ptr32.
	
	"primitive will return nil"
	proxy nilObject
