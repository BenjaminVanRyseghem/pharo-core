operations
rectangleLeft: nLeftRect top: nTopRect right: nRightRect bottom: nBottomRect
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^self nbCall: #(BOOL Rectangle(
			HDC self ,	 
   			int nLeftRect,	 
	     		int nTopRect,	 
            	int nRightRect,	 
            	int nBottomRect)) 
		module: #gdi32
