operations
moveToX:  x y: y
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^self nbCall: #(BOOL MoveToEx(HDC self, int x, int y, 0)) 
			module: #gdi32
