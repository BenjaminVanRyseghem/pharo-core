instructions generated
fdiv: aMemoryOperand
	"Divide
	"
	^ self 
		addInstruction: #fdiv
		operands: { aMemoryOperand }