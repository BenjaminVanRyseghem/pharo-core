converting
asByte
	"answer the byte representing a value"
	(self fitsInSize: 1)
		ifFalse: [ Error signal: self asString, ' exceeds byte (8bit) range' ].

	(self isSigned and: [ value < 0 ]) ifTrue: [ ^ (1<<8) + value ].
	
	^ value