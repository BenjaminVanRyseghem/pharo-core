drawing - private
invalidHeader

	| rect |
	rect := self bounds.
	rect := rect topLeft extent: rect width@self headerHeight.
	self invalidRect: rect