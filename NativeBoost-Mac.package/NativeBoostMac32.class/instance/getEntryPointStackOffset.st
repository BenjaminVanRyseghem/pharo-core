bootstrapping
getEntryPointStackOffset
	" call  dlsym(RTLD_DEFAULT, symbolName) "
	" override, since mac using different RTLD_DEFAULT constant value "
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin' error: errorCode>
	^ self nbCallout
		function: #( ulong () )
		emit: [:gen |	 | asm |
				asm := gen asm.
				asm mov: asm ESP to: asm EAX;
					and: asm EAX with: 16r0F.
		].

	