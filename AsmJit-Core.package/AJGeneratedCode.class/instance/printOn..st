printing
printOn: aStream

	bytes notNil ifTrue: [
		aStream nextPutAll: self dumpWithLabels
		
		]