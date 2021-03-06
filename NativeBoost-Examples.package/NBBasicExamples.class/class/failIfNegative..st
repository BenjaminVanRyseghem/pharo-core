basic-interpreter-proxy-interaction
failIfNegative: anInteger
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( void ( int anInteger ) )  
		emit: [:gen :proxy :asm |
			"aNumber -> EAX"
			asm pop: asm EAX.
			"check if the index in EAX is negative"
			asm test: asm EAX with: asm EAX.
			"if not signed (AKA positive jump to success)"
			asm jns: 'success'.
			gen failWithMessage: 'A negative number is forbidden!'.
			asm label: 'success'.
		]