integer pointers tests
testIntCase2ByteArray 

	self should: [self readIntPtrCase2: (self intByteArray: 12345)] raise: NBFFICalloutError 