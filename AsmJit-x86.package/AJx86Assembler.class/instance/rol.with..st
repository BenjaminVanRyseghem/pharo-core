instructions generated
rol: aDestinationRegisterOrMemory with: aRegisterOrImmediate
	"Rotate
	"
	^ self 
		addInstruction: #rol
		operands: { aDestinationRegisterOrMemory . aRegisterOrImmediate }