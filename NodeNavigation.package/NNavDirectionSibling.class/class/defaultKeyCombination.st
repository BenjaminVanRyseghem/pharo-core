builder
defaultKeyCombination
	^NNavNavigation useArrowsShortcuts 
		ifTrue: [ Character arrowRight command mac | Character arrowRight ctrl  ]
		ifFalse: [ $u command shift  mac| $u ctrl shift unix | $u ctrl shift  ]