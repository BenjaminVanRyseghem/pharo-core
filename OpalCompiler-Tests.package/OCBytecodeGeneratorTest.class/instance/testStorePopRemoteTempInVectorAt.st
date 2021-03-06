tests - instructions
testStorePopRemoteTempInVectorAt
	| cm symbolic |
	
	cm := IRBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushLiteral: 1;
		pushLiteral: 1;
		storePopRemoteTemp: 1 inVectorAt: 1;
		returnTop;
		compiledMethod.

	self assert: (cm isKindOf: CompiledMethod).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic =  '13 <76> pushConstant: 1
14 <76> pushConstant: 1
15 <8E 00 00> popIntoTemp: 0 inVectorAt: 0
18 <7C> returnTop
'