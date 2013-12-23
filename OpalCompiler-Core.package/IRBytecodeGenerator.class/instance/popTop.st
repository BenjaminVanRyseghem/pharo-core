instructions
popTop

	stack pop.
	self nextPut: (Bytecodes at: #popStackBytecode).
