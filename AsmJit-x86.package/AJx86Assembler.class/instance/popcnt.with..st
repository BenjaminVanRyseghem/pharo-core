instructions generated
popcnt: aRegister with: aSourceRegisterOrMemory
	"Bit Population Count
	Description
-----------
This instruction calculates of number of bits set to 1 in the second
operand (source) and returns the count in the first operand (a
destination register).

"
	^ self 
		addInstruction: #popcnt
		operands: { aRegister . aSourceRegisterOrMemory }