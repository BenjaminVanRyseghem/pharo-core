native
primExecuteCallbackEnumReturn1: anEnumCb
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ NBFFICallout
		cdecl: {self enumClass. {self cbClass. #anEnumCb}}
		emitCall: [ :gen :proxy :asm | 
			asm pop: asm EAX.
			asm push: 2400 asImm.
			asm call: asm EAX ]
		options: #(#optMayGC)