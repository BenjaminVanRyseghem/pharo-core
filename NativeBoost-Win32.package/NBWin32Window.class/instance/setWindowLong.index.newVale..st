accessing
setWindowLong: hWnd index: nIndex newVale: dwNewLong
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^self nbCall: #(LONG SetWindowLongA(HWND hWnd, int nIndex, LONG dwNewLong)) 
			module: #user32
