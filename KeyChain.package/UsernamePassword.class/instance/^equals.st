accessing
= another

	self species = another species ifFalse: [ ^ false ].
	^ self username = another username and: [ self password = another password ]