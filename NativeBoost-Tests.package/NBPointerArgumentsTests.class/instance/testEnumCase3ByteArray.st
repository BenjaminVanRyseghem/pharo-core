enum pointers tests
testEnumCase3ByteArray 
	self should: [self readEnumPtrCase3: (self enumByteArray: self class enumClass BBB)] raise: NBCodeGenerationError. 