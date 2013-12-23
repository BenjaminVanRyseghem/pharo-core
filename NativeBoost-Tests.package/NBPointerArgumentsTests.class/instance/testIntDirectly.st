integer pointers tests
testIntDirectly 

	self should: [self readIntPtrCase1: 12345] raise: NBFFICalloutError 