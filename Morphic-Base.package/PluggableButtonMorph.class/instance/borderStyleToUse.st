accessing
borderStyleToUse
	"Return the borderStyle to use for the receiver."
	
	self gradientLook ifFalse:[^super borderStyle].
	^self perform: (self availableBorderStyles at: (
			self interactionStates indexOf: self interactionState))
