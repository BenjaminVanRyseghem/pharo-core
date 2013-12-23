communication with model
listSize

	^ listSize value ifNil: [ self retrieveListSize ]