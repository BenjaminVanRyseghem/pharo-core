helper
returningLoop
	|index|
	index := 1.
	[index := index + 1.
	index = 5 ifTrue: [^index ].
	index = 10] whileFalse.
	^self error