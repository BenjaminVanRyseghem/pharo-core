instructions
popScopeIfRequired
	self currentScope isPushClosureCopy ifFalse: [^nil].
	(((currentInstr = currentInstr sequence last) or: [currentInstr = (currentInstr sequence at: currentInstr sequence size - 1)]) 
		and: [ currentInstr sequence = self currentScope lastBlockSequence ] )
													ifTrue: [self popScope].
	

