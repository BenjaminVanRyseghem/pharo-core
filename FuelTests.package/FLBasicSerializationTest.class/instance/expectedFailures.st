failures
expectedFailures
	| failures |
	failures := #(testConsiderCustomWideSymbolGlobal).
		((SystemVersion current major = 1) 
			and: [SystemVersion current minor < 3]) ifTrue: [ 
				failures := failures, #(testSetElement testSetWithNil testSetWithSetElement) ].
	
	^ failures