testing
ensureContactInfo

	^ self hasContactInfo 
		ifFalse: [ self defineContactInfoTemplate ]