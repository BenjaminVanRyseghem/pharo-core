struct primitives
arity2StructPtrCase4: arg
	"this is the default case where both optAllowByteArraysPtr optAllowExternalAddressPtr are enabled"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^self primitiveArity2Struct: arg case: self case4.