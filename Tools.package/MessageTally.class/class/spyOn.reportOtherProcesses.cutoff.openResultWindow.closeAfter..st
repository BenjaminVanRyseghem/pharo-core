spying
spyOn: aBlock reportOtherProcesses: aBoolean cutoff: aNumber openResultWindow: openResultWindow closeAfter: closeAfter

	| node |
	node := self new.
	node reportOtherProcesses: aBoolean.
	node spyEvery: self defaultPollPeriod on: aBlock.
	
	openResultWindow ifTrue:
	 [ (CodeHolder new contents: (String streamContents: [:s | node report: s cutoff: aNumber]))
		openLabel: 'Spy Results' wrap: false ].
	
	closeAfter ifTrue: [ node close ].
	
	^ node
