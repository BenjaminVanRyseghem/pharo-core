builder
defaultKeyCombination
	^NNavNavigation useArrowsShortcuts 
		ifTrue: [ Character arrowRight command shift  mac | Character arrowRight ctrl shift ]
		ifFalse: [ $o command shift  mac| $o ctrl shift unix | $o ctrl shift  ]

