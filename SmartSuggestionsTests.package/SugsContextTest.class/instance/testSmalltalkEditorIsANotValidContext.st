valid-context
testSmalltalkEditorIsANotValidContext
	| stEditor |
	
	stEditor := SmalltalkEditor new.
	self should: [SugsAbstractContext contextFor: stEditor] raise: Error description:  'Not defined context for ', stEditor asString.