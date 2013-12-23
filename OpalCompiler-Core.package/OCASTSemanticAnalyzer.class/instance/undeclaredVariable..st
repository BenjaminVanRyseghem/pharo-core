error handling
undeclaredVariable: variableNode

	^ OCUndeclaredVariableWarning new
		node: variableNode;
		compilationContext: compilationContext;
		signal