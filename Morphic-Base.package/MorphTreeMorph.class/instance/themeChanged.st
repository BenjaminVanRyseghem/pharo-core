events
themeChanged
	"Update the selection colour."

	self selectionColor ifNotNil: [self selectionColor: self theme selectionColor].
	super themeChanged