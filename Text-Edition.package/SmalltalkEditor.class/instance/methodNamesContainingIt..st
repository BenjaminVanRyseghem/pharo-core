editing keys
methodNamesContainingIt: aKeyboardEvent
	"Browse methods whose selectors containing the selection in their names"

	Smalltalk tools userManager canBrowse ifFalse: [ ^ false ].
	self methodNamesContainingIt.
	^ true