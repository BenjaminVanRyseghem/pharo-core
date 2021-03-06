instructions
storePopInstVar: index

	| interval |
	stack pop.

	interval := Bytecodes at: #storeAndPopReceiverVariableBytecode.
	(index <= interval size and: [forceLongForm not])  ifTrue: [
		^ self nextPut: (interval at: index)
	].
	(index <= 64 and: [forceLongForm not]) ifTrue: [
		self nextPut: (Bytecodes at: #extendedStoreAndPopBytecode).
		^ self nextPut: (0 "instVar" << 6) + index - 1.
	].
	index <= 256 ifFalse: [
		self error: 'can''t reference more than 256 inst vars'].
	self nextPut: (Bytecodes at: #doubleExtendedDoAnythingBytecode).
	self nextPut: 6 "storePopInstVar" << 5.
	self nextPut: index - 1.
