integer pointers tests
testIntCase1ByteArray 
	|value|
	value := 12345.
	self assert:  (self readIntPtrCase1: (self intByteArray: value)) = value.
