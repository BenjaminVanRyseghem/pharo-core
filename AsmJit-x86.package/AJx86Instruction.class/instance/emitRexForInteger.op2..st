code generation
emitRexForInteger: anInt op2: op2
	
	self emitRexPrefixW: op2 is64 R: false X: false  B:  op2 isUpperBank.