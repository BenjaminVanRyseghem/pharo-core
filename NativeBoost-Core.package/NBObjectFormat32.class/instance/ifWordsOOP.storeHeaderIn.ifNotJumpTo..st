emitting tests
ifWordsOOP: aLocation storeHeaderIn: destinationLocation ifNotJumpTo: aLabel
	asm decorateWith: '#jumpTo:ifNotWordsOOP:' during: [ 
	asm 	
		mov: aLocation ptr to: destinationLocation;
		test: destinationLocation with: (self indexableWordsFormat bitShift: self objectFormatShift);
		jz: aLabel
	]