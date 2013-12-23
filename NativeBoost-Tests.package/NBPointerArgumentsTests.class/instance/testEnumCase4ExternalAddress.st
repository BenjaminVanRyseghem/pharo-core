enum pointers tests
testEnumCase4ExternalAddress 
	self should: [self readEnumPtrCase4: (self enumExternalAddress: self class enumClass BBB)] raise: NBCodeGenerationError. 