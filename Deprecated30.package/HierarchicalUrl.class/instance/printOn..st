printing
printOn: aStream

	aStream nextPutAll: self schemeName.
	aStream nextPutAll: '://'.
	self username ifNotNil: [
		aStream nextPutAll: self username urlEncoded.
		self password ifNotNil: [
			aStream nextPutAll: ':'.
			aStream nextPutAll: self password urlEncoded].
		aStream nextPutAll: '@' ].
	aStream nextPutAll: self authority.
	port ifNotNil: [aStream nextPut: $:; print: port].
	path do: [ :pathElem |
		aStream nextPut: $/.
		aStream nextPutAll: pathElem urlEncoded ].
	self query ifNotNil: [ 
		aStream nextPut: $?.
		aStream nextPutAll: self query. ].
	self fragment ifNotNil: [
		aStream nextPut: $#.
		aStream nextPutAll: self fragment urlEncoded ].