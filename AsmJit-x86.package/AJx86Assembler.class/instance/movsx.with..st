instructions generated
movsx: aDestinationRegister with: aSourceRegisterOrMemory
	"Move with Sign-Extension
	"
	^ self 
		addInstruction: #movsx
		operands: { aDestinationRegister . aSourceRegisterOrMemory }