struct primitives
readStructPtrCase4: aStruct
	"this is the default case where both optAllowByteArraysPtr optAllowExternalAddressPtr are enabled"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^self primitiveStruct: aStruct case: self case4.