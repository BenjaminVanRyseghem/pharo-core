testing
canUseStackPointer
	
	gen optUseStackPointer ifFalse: [ ^ false ].
	^ stackPtrAddress notNil
	