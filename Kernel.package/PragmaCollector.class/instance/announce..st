subscription
announce: anAnnouncement
	"see Announcements packages"
	self announcer ifNotNil: [announcer announce: anAnnouncement]