interpret
interpretAll: irSequences
	irSequences do: [:seq | self interpretSequence: seq] 