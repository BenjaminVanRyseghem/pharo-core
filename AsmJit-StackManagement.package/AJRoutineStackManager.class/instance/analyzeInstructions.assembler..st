as yet unclassified
analyzeInstructions: anInstructions assembler: asm
	
	instructions := anInstructions.
	assembler := asm.
	
	instructions do: #prepareCallAlignments.
		
	calls do: [:callInfo |
		callInfo asm: assembler.
		callInfo emitAlignmentIfNeeded ].

	instructions do: [:each | each processTempsWith: self].

	self emitPrologue.

	^ instructions 