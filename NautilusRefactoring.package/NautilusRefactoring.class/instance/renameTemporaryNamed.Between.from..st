source
renameTemporaryNamed: oldname Between: anInterval from: aMethod
	| refactoring | 
	
	aMethod ifNil: [ ^ self ].
	refactoring := self privateRenameTemporaryNamed: oldname Between: anInterval from: aMethod.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring