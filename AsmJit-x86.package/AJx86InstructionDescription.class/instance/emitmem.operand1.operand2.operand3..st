emitting
emitmem: emitter operand1: op1 operand2: op2 operand3: op3

	op1 isMem ifFalse: [ self invalidInstruction ].

	self assert: (opCode2 = 0 or: [ opCode2 = 1 ]).
	emitter emitX86RM: opCode1
		size: opCode2 << 3
		regOrCode: opCodeR 
		rm: op1
