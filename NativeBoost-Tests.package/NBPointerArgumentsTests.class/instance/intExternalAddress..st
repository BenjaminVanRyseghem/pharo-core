integer pointers tests
intExternalAddress: aValue 
	^(toBeFreed := self class intArrayType externalNew: 1)
		at: 1 put: aValue;
		address.
	