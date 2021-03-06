emitting code
readOop: memoryOperand generator: gen
	"emit code to read a value from given memory operand
	and convert it to a corresponding ST object" 
	
	memoryOperand size: self typeSize.
	pointerArity > 0 
		ifTrue: [ gen asm mov: memoryOperand to: gen asm EAX ]
		ifFalse: [ self loadMem: memoryOperand generator: gen ].
	
	self coerceReturn: gen