printing
storeOn: aStream
	aStream store: self name.
	aStream nextPutAll: ' => '.
	self storeInitializationOn: aStream.