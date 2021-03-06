call
callFn: aFunctionOrName
	
	| fn |
	fn := aFunctionOrName.
	aFunctionOrName isString ifTrue: [ fn := self functions at: aFunctionOrName ].

	fn checkVersion. 

	gen optProxyLabels ifTrue: [
		asm label: (asm uniqueLabelName: fn name).
		].
	self canUseDirectProxyFnAddress ifTrue: [		
		asm 
			mov: (fn address asUImm32 annotation: fn name )   to: EAX;
			call: EAX	
	] ifFalse: [
		asm
			mov: (self class interpreterProxyAddress asUImm32 annotation: 'interpreterProxy address')   to: EAX;
			mov: ((EAX ptr + (fn index * self pointerSize)) annotation: fn name) to: EAX;
			call: EAX
	]
