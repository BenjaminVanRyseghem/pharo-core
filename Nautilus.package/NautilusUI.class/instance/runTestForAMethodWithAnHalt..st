menus behavior
runTestForAMethodWithAnHalt: aMethod
	| testMethod  color vScroll testClass testResult  |
	
	testMethod := aMethod correspondingTestMethod.
	testMethod ifNil: [ ^ self ].

	vScroll := methodWidget vScrollValue.
	
	testClass := testMethod methodClass.
	testResult := testClass run: testMethod selector.
	testResult updateResultsInHistory.
		
	(testResult failures isEmpty not or: [ testResult errors isEmpty not ])
		ifTrue: [ 
			testClass debug: testMethod selector ].
	ClassesIconsCache removeKey: aMethod methodClass ifAbsent: []. 
	UIManager default defer:  [ methodWidget vScrollValue: vScroll ].
	
	aMethod hasPassedTest ifTrue: [ color :=  Color green ].
	aMethod hasFailedTest ifTrue: [ color :=  Color yellow ].
	aMethod hasErrorTest ifTrue: [ color :=  Color red ].

	self
		notifyTitle: 'Test Finished' 
		contents: 'Method: ',testMethod methodClass asString, '>>#',testMethod selector asString
		color: color