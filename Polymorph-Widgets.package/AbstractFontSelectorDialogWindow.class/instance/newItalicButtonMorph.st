as yet unclassified
newItalicButtonMorph
	"Answer a button for the italic emphasis of the font."
	
	^self
		newButtonFor: self
		getState: #isItalic
		action: #toggleItalic
		arguments: nil
		getEnabled: nil
		labelForm: Smalltalk ui icons smallItalicIcon
		help: 'Toggle italic font' translated