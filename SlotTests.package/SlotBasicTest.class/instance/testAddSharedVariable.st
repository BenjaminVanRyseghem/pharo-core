tests-shared variables
testAddSharedVariable

	self make: [ :builder | 
		builder sharedVariables: '' ].

	aClass := self make: [ :builder | 
		builder sharedVariables: 'Var' ].
	
	self assert: aClass classVarNames equals: #(Var).
