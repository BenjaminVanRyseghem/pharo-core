tests
testBooleanNew

	self should: [Boolean new] raise: self classForTestResult error. 
	self should: [True new] raise: self classForTestResult error. 
	self should: [False new] raise: self classForTestResult error. 