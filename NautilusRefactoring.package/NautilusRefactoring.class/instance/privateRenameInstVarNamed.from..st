private-inst var
privateRenameInstVarNamed: variable from: aClass
	| name |
	
	name := self 
		request: 'Enter the new variable name:'
		initialAnswer: variable.

	name ifNil: [ ^ nil ].

	^ RBRenameInstanceVariableRefactoring
		model: environment
		rename: variable
		to: name asSymbol
		in: aClass