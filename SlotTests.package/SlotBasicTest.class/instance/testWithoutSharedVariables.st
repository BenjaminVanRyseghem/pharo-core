tests-shared variables
testWithoutSharedVariables

	aClass := self make: [ :builder | 
		builder sharedVariables: '' ].
	
	self assert: aClass classVarNames isEmpty