accessing
node: aVariableNode
	
	super node: aVariableNode.
	messageText := 'Unused temp: ', aVariableNode name.
