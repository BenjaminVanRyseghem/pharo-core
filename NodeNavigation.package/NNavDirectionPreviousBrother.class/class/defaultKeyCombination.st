builder
defaultKeyCombination
	^NNavNavigation useArrowsShortcuts 
		ifTrue: [Character arrowLeft command mac | Character arrowLeft ctrl  ]
		ifFalse: [ $u command mac| $u ctrl unix | $u ctrl  ]
