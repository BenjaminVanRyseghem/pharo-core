visitor
visitVariableNode: aVariableNode
	aVariableNode binding emitValue: methodBuilder
	
	