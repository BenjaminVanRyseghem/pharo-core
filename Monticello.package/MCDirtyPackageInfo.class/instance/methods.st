accessing
methods
	^ (Smalltalk at: #MCMockClassA) selectors
		select: [:ea | ea beginsWith: 'ordinal']
		thenCollect:
			[:ea | RGMethodDefinition realClass: (Smalltalk at: #MCMockClassA) selector: ea ]