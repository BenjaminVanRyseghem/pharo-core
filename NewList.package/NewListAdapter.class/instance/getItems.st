list protocol
getItems

	^ self getItemsSelector 
		ifNil: [ nil ]
		ifNotNil: [:s | self model perform: s ]