private
scrollFromEditor: aValue
	
	self hasMultipleElements ifFalse: [ ^ self ].
	lock ifTrue: [ ^ self ].
	lock := true.

	aValue = 0
		ifTrue: [ container vScrollbar setValue: container vScrollbar value - 0.1 ].

	aValue = 1
		ifTrue: [ container vScrollbar setValue: container vScrollbar value + 0.1 ].
		
	lock := false