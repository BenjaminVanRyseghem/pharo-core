AJBaseReg  -- abstract superclass of all register operands.

Instance Variables:
	size	<Number>  Width in bytes (1, 2, 4, 8...)
	code	<Integer>  Non-negative integer, encoding varies with subclass. For AJx86GPRegisters, ten bits: xyttttnnnn
						where nnnn is the register number 0-15, tttt is the "type", which encodes size as a power of 2. 
						Higher types are used in other subclasses.
						If y is 1, REX prefix is required to encode this register.
						If x is 1, this register cannot be used when any REX prefix is present in the instruction.
	name	<Symbol>  Name by which this register may be referenced in instructions