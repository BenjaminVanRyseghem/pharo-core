initialization
initialize
	super initialize.
	self color: Color black.
	font := StandardFonts listFont.
	listItems := #().
	selectedRow := nil.
	selectedRows := PluggableSet integerSet.
	self adjustHeight.