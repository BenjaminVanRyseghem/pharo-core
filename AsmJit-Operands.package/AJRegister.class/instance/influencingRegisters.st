accessing
influencingRegisters
	self is8
		ifFalse: [ ^ self as8 influencingRegisters ].
	^ { self as8. self as16. self as32. self as64}