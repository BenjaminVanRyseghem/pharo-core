util
returnStructWithCallback: aCallback
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestStructureWithCallback (NBQSortCallback aCallback) ) 
		emit: [:gen :proxy :asm |
		
			asm
				"mov: asm ESP ptr to: asm EAX;"
				pop: asm EAX;
				pop: asm EDX;
		"fill struct with 1, 2, 3 values"
				mov: 1 to: asm EAX ptr32;
				mov: asm EDX to: asm EAX ptr32+4;
				mov: 3 to: asm EAX ptr8+8;
				push: asm EAX
		 ]
	