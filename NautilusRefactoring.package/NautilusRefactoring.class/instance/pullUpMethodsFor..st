method
pullUpMethodsFor: aCollection
	| refactoring | 
	
	aCollection ifEmpty: [ ^ self ].
	refactoring := self privatePullUpMethodsFor: aCollection.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring