converting
as16
	^ self isHighByte
		ifTrue: [ self asLowByte as16 ]
		ifFalse: [ 
			AJx86Registers
				generalPurposeWithIndex: self index
				size: 2
				requiresRex: self index > 7
				prohibitsRex: false ]