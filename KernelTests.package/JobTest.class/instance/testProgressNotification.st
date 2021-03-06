tests
testProgressNotification
	| wasRun |
	wasRun := false.
	[ :job | 
		"job precondition"
		self assert: job title equals: ''.
		self assert: job progress equals: 0.
		
		JobProgress title: 'foo' progress: 0.5.
		self assert: job title equals: 'foo'.
		self assert: job progress equals: 0.5.
		
		wasRun := true ] asJob run.	
	self assert: wasRun.