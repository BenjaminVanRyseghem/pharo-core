emitting the code
emitLoad: gen

	gen proxy stackValue: stackIndex.
	
	^ gen asm EAX