notification-handling
handleJobProgress: notification
	notification title ifNotNil: [ 
		title := notification title ].
	notification progress ifNotNil: [ 
		self basicProgress: notification progress ].
	self announceChange.