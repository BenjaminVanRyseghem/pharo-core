enum pointers tests
testEnumCase3ExternalAddress 
	self should: [self readEnumPtrCase3: (self enumExternalAddress: self class enumClass BBB)] raise: NBCodeGenerationError. 