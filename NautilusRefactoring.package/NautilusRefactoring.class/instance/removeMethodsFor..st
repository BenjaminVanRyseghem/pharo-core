method
removeMethodsFor: aCollection
	| refactoring | 
	
	aCollection ifEmpty: [ ^ self ].
	refactoring := self privateRemoveMethodsFor: aCollection.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring