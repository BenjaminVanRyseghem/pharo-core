initialization
initialize

	super initialize.

	manager := TabManager new.
	manager
		when: #tabManagerDeleted send: #delete to: self.
	listModel := ListModel new.
	listModel items: ((1 to: 1000) asOrderedCollection)