private
returnReceiver: x arg2: y
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	

	^ self nbCallout
		function: #( oop (oop self , oop x, oop y)) emit: [
		:gen :proxy :asm |
			proxy receiver
		] 