running
setUp
	super setUp.
	composite := CompositeFillStyle new.
	colorStyle := ColorFillStyle new.
	composite fillStyles: (Array with: ImageFillStyle new with: colorStyle)