morphic
getItems

	^ toggleTitle 
		ifTrue: [ rawList ]
		ifFalse: [ rawList reversed ]