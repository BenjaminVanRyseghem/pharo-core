debugging actions
buildTestSuiteFor: aMethod

	^ TestSuite new
		addTest: (aMethod methodClass selector: aMethod selector);
		yourself