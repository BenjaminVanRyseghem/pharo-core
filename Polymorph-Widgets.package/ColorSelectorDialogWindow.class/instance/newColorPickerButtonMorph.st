as yet unclassified
newColorPickerButtonMorph
	"Answer a button to enable picking of colour."

	^self
		newButtonFor: self
		getState: nil
		action: #pickColor
		arguments: nil
		getEnabled: nil
		labelForm: ((Smalltalk ui icons eyedropperIcon)
						scaledIntoFormOfSize: 16)
		help: 'Pick a color from the screen' translated