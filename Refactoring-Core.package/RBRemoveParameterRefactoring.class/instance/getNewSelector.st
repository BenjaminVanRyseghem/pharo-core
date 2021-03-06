transforming
getNewSelector
	| tree |
	(class directlyDefinesMethod: oldSelector)
		ifFalse: [self refactoringFailure: 'Method doesn''t exist'].
	tree := class parseTreeFor: oldSelector.
	tree isNil ifTrue: [self refactoringFailure: 'Cannot parse sources'].
	parameterIndex := tree argumentNames indexOf: argument ifAbsent: [self refactoringFailure: 'Select a parameter!!'].
	permutation := (1 to: oldSelector numArgs)
				copyWithout: parameterIndex.
	newSelector := self computeNewSelector