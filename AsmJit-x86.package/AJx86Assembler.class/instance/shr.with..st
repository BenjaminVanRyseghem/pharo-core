instructions generated
shr: aDestinationRegisterOrMemory with: aRegisterOrImmediate
	"Shift
	"
	^ self 
		addInstruction: #shr
		operands: { aDestinationRegisterOrMemory . aRegisterOrImmediate }