struct ptr tests
testStructCase4ExternalAddress 

	self should: [self readStructPtrCase4: (self structExternalAddress: 12345)] raise: NBFFICalloutError.