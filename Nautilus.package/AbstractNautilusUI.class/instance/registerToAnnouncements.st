announcement registration
registerToAnnouncements
	self registerToSystemAnnouncements.
	(Smalltalk 
		at: #TestAnnouncer
		ifPresent: [ self registerToTestAnnouncements ]). 
	self registerToMCAnnouncements.		
	self registerToGroupAnnouncements. 