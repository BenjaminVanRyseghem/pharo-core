tricky asserting
testExceptionResume
	
	self assert: ([ 1 + Exception signal ] on: Exception do: [ :err| err resume: 5 ]) = 6.
	self assert: [[ 1 + Exception signal ] on: Exception do: [ :err| err resume: 5 ]. true] value = true.