testing
fitsInSize: aSize
	| maxSize |
	maxSize := 1 << (aSize * 8).

	self isUnsigned 
		ifTrue: [ ^ maxSize > value ].

	value < 0 
		ifTrue: [ ^ 0 - value <= (maxSize >> 1) ].
		
	^ value < (maxSize>>1)