temp vars
tempVars

	^ tempVars asSortedCollection: [:x :y | x index <= y index]