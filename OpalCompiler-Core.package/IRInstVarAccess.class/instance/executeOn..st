interpret
executeOn: interpreter
	store 
		ifFalse: [interpreter pushInstVar: index ]
		ifTrue: [interpreter storeInstVar: index ]
	