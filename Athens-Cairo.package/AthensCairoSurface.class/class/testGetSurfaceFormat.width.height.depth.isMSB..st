private
testGetSurfaceFormat: handle width: wBuf height: hBuf depth: depthBuf isMSB: isMSBBuf

<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	NBFFICallout cdecl:  #( int (ulong handle, int* wBuf, int* hBuf, int* depthBuf, int* isMSBBuf) ) emitCall: [:gen :proxy :asm | 
		asm
			mov: (self dispatchStruct getSurfaceFormatFn) asUImm32 to: asm EAX;
			call: asm EAX
		]

