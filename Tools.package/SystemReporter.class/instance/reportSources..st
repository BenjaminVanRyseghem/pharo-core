reporting
reportSources: aStream
	self header: 'Image Sources' on: aStream.
	aStream nextPutAll: SourceFiles class printString; cr.
	SourceFiles do: [:each |
		each ifNotNil: [aStream nextPutAll: each printString; cr]]