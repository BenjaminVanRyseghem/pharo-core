instruction list
newJumpInstruction: name description: description operands: operands
	| jumpInstruction destination |
	jumpInstruction := self newJumpInstruction
		name: name;
		description: description.
	operands size ~= 1
		ifTrue: [ Error signal: 'Jump instruction only takes one argument!' ].
	destination := operands first.
	destination isString
		ifTrue: [ ^ jumpInstruction label: (self labelNamed: destination) ].
	destination isLabel
		ifTrue: [ ^ jumpInstruction label: destination ].
	^ self newInstruction
		name: name;
		description: description;
		operands: operands;
		checkOperandsForConflict