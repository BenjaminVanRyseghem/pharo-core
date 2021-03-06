class
removeClasses: aCollection
	"Execute the refactoring of the receiver."

	| refactoring |
	refactoring := self privateRemoveClassesFor: aCollection.
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.

	self performRefactoring: refactoring.
	^ true