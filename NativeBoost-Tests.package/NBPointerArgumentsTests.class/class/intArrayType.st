array types
intArrayType
	^IntArrayType isNil ifTrue: [IntArrayType := NBExternalArray ofType: #NBInt32] ifFalse:[IntArrayType]