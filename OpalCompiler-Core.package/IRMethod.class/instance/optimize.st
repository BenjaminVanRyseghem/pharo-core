optimizing
optimize
	self removeEmptyStart.
	self compilationContext optionOptimizeIR ifFalse: [^self].
	self absorbJumpsToSingleInstrs.
	self absorbConstantConditionalJumps.
	self absorbJumpsToSingleInstrs