error handling
unusedVariable: variableNode

	^ OCUnusedVariableWarning new
		node: variableNode;
		compilationContext: compilationContext;
		signal