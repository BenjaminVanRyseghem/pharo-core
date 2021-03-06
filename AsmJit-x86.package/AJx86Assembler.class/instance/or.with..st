instructions generated
or: aRegisterOrMemoryOperand with: aSource
	"Logical Inclusive OR
	Pseudo Code
-----------
DEST = DEST OR SRC;

Description
-----------
Performs a bitwise inclusive OR operation between the destination
(first) and source (second) operands and stores the result in the
destination operand location. The source operand can be an immediate, a
register, or a memory location; the destination operand can be a
register or a memory location. (However, two memory operands cannot be
used in one instruction.) Each bit of the result of the OR instruction
is set to 0 if both corresponding bits of the first and second operands
are 0; otherwise, each bit is set to 1.

This instruction can be used with a LOCK prefix to allow the instruction
to be executed atomically.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bits. See the summary chart at the beginning of this
section for encoding data and limits.

"
	^ self 
		addInstruction: #or
		operands: { aRegisterOrMemoryOperand . aSource }