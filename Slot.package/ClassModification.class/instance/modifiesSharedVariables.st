testing
modifiesSharedVariables

	 "Note: The meta class has the same shared variables as it's non-meta class"
	^ target isInstanceSide and: [ (target classVariablesString = sharedVariables) not ]
	