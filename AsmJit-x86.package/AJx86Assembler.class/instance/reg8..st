accessing
reg8: index

	"answer one of 8bit general-purpose registers, based on index"
	
	index < 0 ifTrue: [ self invalidRegisterIndex ].
	(index >= self numGPRegisters) ifTrue: [ self invalidRegisterIndex ].

	^ AJx86Registers code: index