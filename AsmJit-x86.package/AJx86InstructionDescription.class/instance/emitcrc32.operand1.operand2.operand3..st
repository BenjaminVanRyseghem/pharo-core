emitting
emitcrc32: emitter operand1: dst operand2: src operand3: op3

	(dst isReg and: [ src isRegMem ]) ifTrue: [
		self assert: (dst isRegTypeGPD | dst isRegTypeGPQ).

		^ emitter emitX86RM: opCode1 + (src size ~= 1) asBit
			size: src size
			regOrCode: dst
			rm: src
		].
	
	self invalidInstruction.
