instructions
pushThisContext

	stack push.
	self nextPut: (Bytecodes at: #pushActiveContextBytecode).
