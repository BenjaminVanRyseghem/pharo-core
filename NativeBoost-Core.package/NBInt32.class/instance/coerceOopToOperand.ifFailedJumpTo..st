emitting code
coerceOopToOperand: gen ifFailedJumpTo: aLabel
	" input: 
		EAX - oop
	  output:
	      EAX - result of coercion
	"
	
	self assert: (pointerArity = 0).
	gen proxy signed32BitValueOf: gen asm EAX