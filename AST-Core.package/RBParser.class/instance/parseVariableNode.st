private-parsing
parseVariableNode
	currentToken isIdentifier 
		ifFalse: [ ^ self parserError: 'Variable name expected' translated].
	^self parsePrimitiveIdentifier