instructions
createTempVectorNamed: name withVars: vars

	stream nextPutAll: 'createTempVectorNamed: '.
	name printOn: stream.
	stream nextPutAll: ' withVars: '.
	stream nextPutAll: vars printString.