operations
moveWindowX: x y: y width: nWidth height: nHeight
	"move window example"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout
		stdcall;  
		options: #( + optMayGC );  " calls windowproc"
		function: #( 
			BOOL MoveWindow ( HWND self,
				int x,
				int y,
				int nWidth,
   				int nHeight,
 				false
				))
		module: #user32
