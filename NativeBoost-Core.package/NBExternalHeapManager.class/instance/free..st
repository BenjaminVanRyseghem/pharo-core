memory operations
free: address


	sema critical: [	| block |
		block := reservedBlocks removeKey: address ifAbsent: [
			self error: 'Unable to find a memory block with given address' ].
	
		block makeFreeFor: self ]
	