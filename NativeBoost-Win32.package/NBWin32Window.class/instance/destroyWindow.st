operations
destroyWindow
	"destroy the window"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		stdcall; 
		options: #( + optMayGC );  " calls windowproc"  
		function: #( BOOL DestroyWindow ( HWND self ))
		module: #user32
