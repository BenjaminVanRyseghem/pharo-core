accessing
updateCodePanel
	commentTextArea ifNil: [ self buildCommentPane ].
	sourceCodePanel removeAllMorphs.
	self model showComment
		ifTrue: [ self buildCodePanelWithComment ]
		ifFalse: [ self buildCodePanelWithoutComment ]