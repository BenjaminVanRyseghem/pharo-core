accessing
releaseDC: hdc
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCall: #( 
	
		int ReleaseDC (
		  HWND self ,  " handle to window"
		  HDC hdc     " handle to DC "
		))
		module: #user32