parsing
parseArguments: args 
	" not userful, lets ignore it"

"	(args size = 1 and: [ args first == #void ]) ifTrue: [ arguments := #(). ^ self ].
	
	arguments := args collect: [:type |
		( #(sqInt sqIntPtr sqLong double charPtr voidPtr) includes: type ) ifFalse: [
			self error: 'invalid argument type'
		].
	
		type
	]"