array types
ptrArrayType
	^PtrArrayType isNil ifTrue: [PtrArrayType := NBExternalArray ofType: 'void *'] ifFalse:[PtrArrayType]