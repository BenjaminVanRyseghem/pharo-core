valid-context
testTetModelIsAValidContext
	| textModel |
	
	textModel := TextModel new.
	self assert: (SugsAbstractContext contextFor: textModel) class equals: SugsMessageBrowserContext.