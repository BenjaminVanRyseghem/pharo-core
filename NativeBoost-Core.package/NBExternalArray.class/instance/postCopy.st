copying
postCopy
	
	self isExternal ifTrue: [
		"copy the data from external memory into newly allocated byte array "
		| newData sz |
		sz := self class elementSize * size.
		newData := ByteArray new: sz.
		NativeBoost memCopy: data to: newData size: sz.
		data := newData.
	] ifFalse: [
		data := data copy.
	]