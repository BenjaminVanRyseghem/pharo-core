tests - as class
testAsClassIfPresent
	
	'String' asClassIfPresent: [ :class | 
		self assert: class equals: String ].
	
	'+' asClassIfPresent: [ ^ self fail ].