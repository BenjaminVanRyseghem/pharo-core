subscription
whenChangedSend: aSelector to: anObject
	"record a change listener"
	self subscribe: PragmaAnnouncement send: aSelector to: anObject
