editing keys
methodStringsContainingIt: aKeyboardEvent
	"Invoked from cmd-E -- open a browser on all methods holding string constants containing it."

	Smalltalk tools userManager canBrowse ifFalse: [ ^ false ].
	self methodStringsContainingit.
	^ true