printing
printOn: aStream

	aStream
		nextPutAll: self class printString.
	testSelector ifNotNil: [
		aStream nextPutAll: '>>#';
		nextPutAll: testSelector]