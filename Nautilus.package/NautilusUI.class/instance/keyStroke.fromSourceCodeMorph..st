events handling
keyStroke: anEvent fromSourceCodeMorph: aMorph
	"Here I received each key stroke in the source code text morph"

	| string |
	(self selectedMethod isNil and: [ self selectedCategory isNil ])
		ifTrue: [
			(sourceTextArea text isEmpty or: [ sourceTextArea text first isLowercase])
				ifTrue: [ self setStylerClass: self selectedClass ]
				ifFalse: [ self setStylerClass: nil ]].

	string := anEvent keyString.

	string = '<Ctrl-Cmd-right>'
		ifTrue: [ ^ self giveFocusTo: list ].
	
	string = '<Ctrl-Cmd-left>'
		ifTrue: [ ^ self giveFocusTo: methodWidget ].
	
	string =  '<Cmd-Shift-up>'
		ifTrue: [ ^ self decrementMethodsListIndex ].
	
	string =  '<Cmd-Shift-down>'
		ifTrue: [ ^ self incrementMethodsListIndex ].
		
	self aKeyHasBeenPressed: anEvent keyCharacter.
	