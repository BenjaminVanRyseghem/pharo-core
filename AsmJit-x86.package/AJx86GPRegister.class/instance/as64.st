converting
as64
	^ self isHighByte
		ifTrue: [ self asLowByte as64 ]
		ifFalse: [ 
			AJx86Registers
				generalPurposeWithIndex: self index
				size: 8
				requiresRex: self index > 7
				prohibitsRex: false ]