struct ptr tests arity 2
testArity2StructCase3Struct

	self should: [self arity2StructPtrCase3: (self structValue: 12345678)] raise: NBFFICalloutError.

