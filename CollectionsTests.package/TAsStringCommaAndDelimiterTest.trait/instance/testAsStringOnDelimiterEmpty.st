tests - as string comma delimiter sequenceable
testAsStringOnDelimiterEmpty

	| delim emptyStream |
	delim := ', '.
	emptyStream := ReadWriteStream on: ''.
	self empty asStringOn: emptyStream delimiter: delim.
	self assert: emptyStream contents = ''.
