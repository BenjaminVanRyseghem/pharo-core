code emitting
emitmovSxZx: emitter operand1: dst operand2: src operand3: op3
	dst isReg & src isRegMem
		ifFalse: [ self invalidInstruction ].
	src size >= dst size
		ifTrue: [ self invalidInstruction ].
	dst isGeneralPurpose
		ifFalse: [ self invalidInstruction ].
	src is16
		ifTrue: [ 
			^ emitter
				emitX86RM: opCode1 + 1
				size: dst size
				regOrCode: dst
				rm: src ].
	src is32
		ifTrue: [ self invalidInstruction ].	"64 bit source"
	emitter
		emitX86RM: opCode1
		size: dst size
		regOrCode: dst
		rm: src