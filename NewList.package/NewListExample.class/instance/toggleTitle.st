protocol
toggleTitle

	toggleTitle := toggleTitle not.
	self changed: #title.
	self changed: #getItems.