tests
testInCache
	self deny: (ASTCache default includesKey: compiledMethod).
	
	compiledMethod ast.
	
	self assert: (ASTCache default includesKey: compiledMethod).