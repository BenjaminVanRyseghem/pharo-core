printing
printAsOperandOn: aStream
	
	annotation ifNotNil: [
		aStream nextPut: $"; nextPutAll: annotation asString; nextPut: $"; space
	].

	operands 
		ifNil: [ ^ aStream nextPutAll: 'aStackTEMP' ].
	self operand printAsOperandOn: aStream.