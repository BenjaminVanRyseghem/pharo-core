basc-types
returnIntegerDirectOOP
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

"here, since we put a return type 'oop', this means that NB FFI won't perform any conversion
of returned value, therefore a native code must take care by itself for returning a valid oop"
	^ self nbCallout 
		function: #( oop ( void) )  
		emit: [:gen :proxy :asm |
			asm mov: (123456789 << 1) + 1 to: asm EAX
		]