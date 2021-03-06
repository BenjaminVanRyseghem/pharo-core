initialization
initialize
	"Create all the standard cursors..." 
		self initOrigin.
		self initRightArrow.
		self initMenu.
		self initCorner.
		self initRead.
		self initWrite.
		self initWait.
		BlankCursor := Cursor new.
		self initXeq.
		self initSquare.
		self initNormalWithMask.
		self initCrossHair.
		self initMarker.
		self initUp.
		self initDown.
		self initMove.
		self initBottomLeft.
		self initBottomRight.
		self initResizeLeft.
		self initResizeTop.
		self initResizeTopLeft.
		self initResizeTopRight.
		self initTopLeft.
		self initTopRight.
		self initTarget.
		self initOverEditableText.
		self makeCursorsWithMask.

		"Cursor initialize"
