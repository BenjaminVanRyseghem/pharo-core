context
blockContextFor: aBlockClosure message: aMessage
	| block |
	
	block := aBlockClosure code.
	
	context := AIBlockContext new
		homeContext: aBlockClosure homeContext;
		outerContext: context;
		closure: aBlockClosure;
		arguments: aMessage arguments;
		temporaries: block temporaryNames.