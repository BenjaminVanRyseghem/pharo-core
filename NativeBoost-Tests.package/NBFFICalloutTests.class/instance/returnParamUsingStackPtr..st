tests
returnParamUsingStackPtr: aParam

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin >
	
	^ self nbCallout 
		options: #( + optUseStackPointer optNoAlignment - optDirectProxyFnAddress );
		function: #( oop (oop aParam) ) emit: [:gen |
			gen asm mov: gen asm ESP ptr to: gen asm EAX ]
	