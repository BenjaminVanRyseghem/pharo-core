instructions
returnTop
	stack pop.
	self nextPut: (Bytecodes at: #returnTopFromMethod).
