emitting tests
jumpTo: aLabel ifNotWordsOOP: aLocation
	asm decorateWith: '#jumpTo:ifNotWordsOOP:' during: [ 
	self ifImmediate: aLocation jumpTo: aLabel .
	asm 	
		push: asm EAX;
		mov: aLocation ptr to: asm EAX;
		test: asm EAX with: (self indexableWordsFormat bitShift: self objectFormatShift);
		pop: asm EAX;
		jz: aLabel
	]