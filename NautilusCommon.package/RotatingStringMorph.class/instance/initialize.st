initialization
initialize

	super initialize.
	initialContents := self contents.
	rotating := false.
	self on: #mouseEnter send: #mouseEnter: to: self.
	self on: #mouseLeave send: #mouseLeave: to: self.