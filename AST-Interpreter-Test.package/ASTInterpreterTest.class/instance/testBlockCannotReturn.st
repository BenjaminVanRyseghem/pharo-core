testing - blocks
testBlockCannotReturn
	self should: [ self interpret: 'ASTInterpreterTest new returningBlock value' ] raise: InterpretationError.
	self should: [ self interpret: 'ASTInterpreterTest new returningBlockArg value: 1' ] raise: InterpretationError.
	self interpret: 'ASTInterpreterTest new returningBlockNonRootContext2 '.
	self interpret: 'ASTInterpreterTest new returningBlockNonRootContext '