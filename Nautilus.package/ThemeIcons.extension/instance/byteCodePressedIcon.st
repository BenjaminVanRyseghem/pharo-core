*Nautilus-icons
byteCodePressedIcon 
	^ icons
			at: #'byteCodePressedIcon'
			ifAbsentPut:[ self byteCodePressedIconContents ].