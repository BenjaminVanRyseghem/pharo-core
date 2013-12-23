*Nautilus-icons
byteCodeUnselectedIcon 
	^ icons
			at: #'byteCodeUnselectedIcon'
			ifAbsentPut:[ self byteCodeUnselectedIconContents ].