quick methods
quickMethod

	instructionStream method primitive = 256 ifTrue: [
		^ self methodReturnReceiver
	].
	instructionStream method isReturnSpecial ifTrue: [
		^ self methodReturnConstant: (IRBytecodeGenerator specialConstants at: instructionStream method primitive - 256)
	].
	instructionStream method isReturnField ifTrue: [
		self pushReceiverVariable: instructionStream method returnField.
		^ self methodReturnTop
	].
	self error: 'quick method inconsistency'