I am memory operand used in assembly instructions. I can be created from an immedate or a register.

Memory operands are used to read values indirectly from memory using certain offsets.

Example:
	asm := AJx86Assembler new.
	
	"create an memory operand on the address 1234"
	1234 asImm ptr
	
	"create a simple memory operand with RAX as base"
	asm RAX ptr.
	
	"the same with a 8 byte offset"
	asm RAX ptr + 8