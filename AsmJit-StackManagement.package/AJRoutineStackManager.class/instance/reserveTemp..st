as yet unclassified
reserveTemp: anAJReserveTemp
	self stackFrameCheck.
	temps := temps + 1.
	maxTemps := maxTemps max: temps .
	
	anAJReserveTemp operand: (assembler stackFrameValueAtOffset: extraStackBytes + (temps * assembler wordSize )).