error handling
storeIntoSpecialVariable: variableNode

	^ OCSemanticError new
		node: variableNode;
		compilationContext: compilationContext;
		messageText: 'Cannot store into';
		signal