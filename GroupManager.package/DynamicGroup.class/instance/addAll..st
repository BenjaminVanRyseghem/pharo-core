protocol
addAll: aCollection

	aCollection do: [:e | self addBlock: [{ e }]]