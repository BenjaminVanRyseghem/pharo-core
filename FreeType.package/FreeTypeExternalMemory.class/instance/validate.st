validation
validate
	self isValid 
		ifFalse: [
			bytes ifNotNil:[
				[self primCopyToExternalMemory: bytes]
					on: FT2Error 
					do:[:e |"need to do something here?"].
				self isValid ifTrue:[self class register: self]]]