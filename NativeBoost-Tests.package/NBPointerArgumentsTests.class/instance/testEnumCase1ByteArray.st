enum pointers tests
testEnumCase1ByteArray 
	|item|
	item := self class enumClass BBB.
	self should: [ self readEnumPtrCase1: (self enumByteArray: item) ] raise: NBCodeGenerationError.