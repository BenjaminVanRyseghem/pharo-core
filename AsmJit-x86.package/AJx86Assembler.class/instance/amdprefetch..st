instructions generated
amdprefetch: aMemoryOperand
	"
	"
	^ self 
		addInstruction: #amdprefetch
		operands: { aMemoryOperand }