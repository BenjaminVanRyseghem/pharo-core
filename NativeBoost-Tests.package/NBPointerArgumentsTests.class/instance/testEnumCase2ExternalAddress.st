enum pointers tests
testEnumCase2ExternalAddress 
	| item | 
	item := self class enumClass DDD.
	self should: [self readEnumPtrCase2: (self enumExternalAddress: item)] raise: NBCodeGenerationError