printing
printInstructions
	" AJInstructionDescription printInstructions.
	
	AJInstructionDescription printInstructions openInWorkspaceWithTitle: 'x86 instructions'
	 "
	^ String streamContents: [:str | self printInstructionsOn: str ]

