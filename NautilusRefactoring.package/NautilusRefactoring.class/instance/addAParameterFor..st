method
addAParameterFor: aMethod
	| refactoring | 
	
	aMethod ifNil: [ ^ self ].
	refactoring := self privateAddAParameterFor: aMethod.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring