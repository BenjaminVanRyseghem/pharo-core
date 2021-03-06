tests
testExternallyAllocatedStructure

	| struct struct2 |
	
	struct := NBTestStructure externalNew.
	self assert: struct isExternal.
	
	[	struct byte: 10.
		struct short: -20.
		struct long: 100.
		struct float: 1.0.
		struct double: 2.0.
		struct int64: 123456789101112.
	
	
		struct2 := NBTestStructure fromPointer: struct address.
	
		self assert: (struct2 byte = 10).
		self assert: (struct2 short = -20).	
		self assert: (struct2 long = 100).	
		self assert: (struct2 float = 1.0).	
		self assert: (struct2 double = 2.0).	
		self assert: (struct2 int64 = 123456789101112).	
	] ensure: [  struct free ].