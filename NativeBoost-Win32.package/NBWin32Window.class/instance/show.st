opening
show
	"show the window"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout stdcall 
		options: #( + optMayGC );  " calls windowproc"
		function: #( BOOL ShowWindow ( HWND self, SW_SHOW ))
		module: #user32
