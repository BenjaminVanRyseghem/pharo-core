retrieving the code
generatedCode

	proxy usedGate ifTrue: [
		asm reserveExtraBytesOnStack: asm wordSize*2.
		].
	
	self optDebug ifTrue: [ self halt. ].

	^ asm generatedCode.
