accessing
useAsASet: anObject

	useAsASet := anObject.
	anObject 
		ifTrue: [	self methodReferenceList: ((self methodReferenceList reversed asSet) asOrderedCollection)].
	self updateView