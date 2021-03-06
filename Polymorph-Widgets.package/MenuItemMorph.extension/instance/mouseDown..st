*Polymorph-Widgets-override
mouseDown: evt
	"Handle a mouse down event. Menu items get activated when the mouse is over them."

	evt shiftPressed ifTrue: [^ super mouseDown: evt].  "enable label editing"

	(self isInDockingBar
			and:[isSelected]
			"and:[owner selectedItem == self]")
		ifTrue:[
			evt hand newMouseFocus: nil.
			owner selectItem: nil event: evt. ]
		ifFalse:[
			evt hand newMouseFocus: owner. "Redirect to menu for valid transitions"
			owner selectItem: self event: evt. ]
