basic-interpreter-proxy-interaction
returnMethodLiteral
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( oop ( void) )  
		emit: [:gen :proxy :asm |
			"store this method in EAX"
			proxy primitiveMethod.
			"the current method is in EAX
				EAX literalAt: 0 "
			proxy literal: 0 ofMethod: asm EAX.
		]