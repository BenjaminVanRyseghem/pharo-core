tests - instructions
testPushLiteralVariable
	| cm symbolic |
	
	cm := IRBytecodeGenerator new
		numArgs: 0;
		numTemps: 0;
		pushLiteralVariable: (LookupKey key: '1');
		returnTop;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic = '17 <40> pushLit: 1
18 <7C> returnTop
'
	