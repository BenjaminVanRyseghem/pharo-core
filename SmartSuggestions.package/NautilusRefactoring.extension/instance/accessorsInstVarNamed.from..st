*SmartSuggestions
accessorsInstVarNamed: aVariableName from: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privateAccessorsInstVarNamed: aVariableName from:  aClass.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring.