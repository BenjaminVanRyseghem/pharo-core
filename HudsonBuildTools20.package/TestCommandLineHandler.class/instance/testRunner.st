as yet unclassified
testRunner
	^ (self hasOption: 'junit-xml-output')
		ifTrue: [ HDTestReport ]
		ifFalse: [ CommandLineTestRunner ]