accessing
childrenItems

	self level = 1
		ifTrue: [
			self model level = 2
				ifTrue:[ ^ self dictionary at: self item ].
			self model level = 3
				ifTrue:[ ^ self dictionary keys sort:[:a :b | a asString < b asString ]]]
		ifFalse: [ ^ self dictionary at: self item ]

