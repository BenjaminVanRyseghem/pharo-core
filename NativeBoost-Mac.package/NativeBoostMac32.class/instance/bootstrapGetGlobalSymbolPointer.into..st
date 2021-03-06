bootstrapping
bootstrapGetGlobalSymbolPointer: symbolName into: returnValueBuffer
	" call  dlsym(RTLD_DEFAULT, symbolName) "
	" override, since mac using different RTLD_DEFAULT constant value "
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin' error: errorCode>
	^ self nbCallout
		options: #( - optUseStackPointer);
		function: #( NBBootstrapUlong (RTLD_DEFAULT , String symbolName) )
		emit: [:gen |	 | asm |
				asm := gen asm.
				asm mov: (self primitiveDlsym asUImm) to: asm EAX.
				asm call: asm EAX.
		]