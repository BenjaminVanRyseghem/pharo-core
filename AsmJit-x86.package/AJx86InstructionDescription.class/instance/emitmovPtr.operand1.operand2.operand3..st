emitting
emitmovPtr: emitter operand1: op1 operand2: op2 operand3: op3

	| reg imm opCode |
	(op1 isReg & op2 isImm) | (op1 isImm & op2 isReg) ifFalse: [
		self invalidInstruction ].
	
	opCode := op1 isReg 
		ifTrue: [reg := op1. imm := op2. 16rA0] 
		ifFalse: [reg := op2. imm := op1. 16rA2].
	
	reg index ~= 0 ifTrue: [ self invalidInstruction ].

	reg isRegTypeGPW ifTrue: [ emitter emitByte: 16r66 ].

	emitter emitRexR: (reg size=8) opReg: 0 regCode: 0.
	emitter emitByte: opCode + (reg size ~=1) asBit.
	emitter emitImmediate: imm size: reg size
