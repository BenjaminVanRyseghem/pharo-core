source code area
contentsSelectionFrom: aTextMorph 

	^ (contentSelection notNil and: [ aTextMorph == sourceTextArea  ])
		ifTrue: [ | result |
			result := contentSelection.
			contentSelection := nil.
			result ]
		ifFalse: [ self contentSelectionFor: aTextMorph ]