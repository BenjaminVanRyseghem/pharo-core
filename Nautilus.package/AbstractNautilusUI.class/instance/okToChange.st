source code area
okToChange
	sourceTextArea ifNil: [ ^ true ].
	sourceTextArea text asString trimBoth = sourceTextArea getText asString trimBoth ifTrue: [ ^ true ].
	sourceTextArea canDiscardEdits ifTrue: [ ^ true].
	sourceTextArea update: #wantToChange.
	^ sourceTextArea canDiscardEdits