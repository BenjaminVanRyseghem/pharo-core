emitting
emitret: emitter operand1: op1 operand2: op2 operand3: op3

	op1 ifNil: [ ^ emitter emitByte: 16rC3 ].
	
	op1 isImm ifFalse: [ self invalidInstruction ].
	
	self assert: (op1 isUnsigned and: [op1 fitsInSize: 2]).
	
	(op1 value = 0 and: [ op1 relocMode  == #RelocNone ]) ifTrue: [
		^ emitter emitByte: 16rC3	].
		
	emitter emitByte: 16rC2.
	emitter emitImmediate: op1 size: 2