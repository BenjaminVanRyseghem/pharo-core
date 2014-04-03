session management
initializeForNewSession

	self allSubclassesDo: [ :each | each updateFieldOffsets ]