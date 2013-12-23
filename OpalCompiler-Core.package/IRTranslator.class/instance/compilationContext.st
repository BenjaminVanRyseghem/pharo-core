accessing
compilationContext
	^compilationContext ifNil: [ compilationContext := CompilationContext default ]