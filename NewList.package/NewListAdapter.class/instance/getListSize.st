list protocol
getListSize

	^ self getListSizeSelector
		ifNil: [ nil ]
		ifNotNil: [:s | self model perform: s ]