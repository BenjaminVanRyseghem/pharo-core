source code area
addComment: aText notifying: aController

	self selectedClass
		ifNil: [
			self selectedPackage
				ifNotNil: [:package | 
					"commentTextArea update: #clearUserEdits.
					package comment: aText"]]
		ifNotNil: [:class |
			commentTextArea update: #clearUserEdits.
			class comment: aText stamp: Author changeStamp]