tests
testArraySize

	| arr |
	
	arr := ByteArray new: 100.

	self assert: (self arraySize: arr) = 100.

	self assert: (self arraySize2: arr with: 20) = 100.