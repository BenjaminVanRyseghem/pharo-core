initialization
initialize
	gen := self compilationContext  bytecodeGeneratorClass new .
	trailer := CompiledMethodTrailer empty.
	currentScope := Stack new.
	tempVectorStack := Stack new.
