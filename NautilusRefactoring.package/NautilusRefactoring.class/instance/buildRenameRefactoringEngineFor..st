class
buildRenameRefactoringEngineFor: aClass

	| newName |
	newName := (UIManager default
			request: 'Enter the new class name:'
			initialAnswer: aClass name).
	newName isEmptyOrNil ifTrue: [ ^ nil ].
	^ RBRenameClassRefactoring
		model: RBNamespace new
		rename: aClass
		to: newName