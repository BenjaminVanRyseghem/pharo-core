*SmartSuggestions
accessorsClassVarNamed: aVariableName from: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privateAccessorsClassVarNamed: aVariableName from:  aClass.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring.