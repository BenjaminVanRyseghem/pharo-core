tests - instructions
testStoreTemp
	| cm symbolic |
	
	cm := IRBytecodeGenerator new
		numArgs: 0;
		numTemps: 1;
		pushLiteral: 1;
		storeTemp: 1;
		returnTop;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic =  '13 <76> pushConstant: 1
14 <81 40> storeIntoTemp: 0
16 <7C> returnTop
'