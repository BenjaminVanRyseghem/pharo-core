message - sending
lookupSelector: selector in: class
	| currentClass |
	currentClass := class.
	[ currentClass isNil ] whileFalse: [ 
			currentClass methodDict at: selector ifPresent: [ :method | ^ method ].
			currentClass := currentClass superclass ].
	^ nil