selector-chooser
querySymbolFrom: aTextMorph
	| sel pref caret nextPref |
	sel := aTextMorph editor selectionInterval.
	aTextMorph editor hasSelection
		ifFalse: [aTextMorph editor selectPrecedingIdentifier].
	pref := String streamContents: [:strm |
		aTextMorph selection asString trimBoth do: [:c | c isSeparator ifFalse: [strm nextPut: c]]].
	selectorChooser := SelectorChooserMorph popUpPrefix: pref from: aTextMorph.
