*Nautilus-icons
byteCodeSelectedIcon 
	^ icons
			at: #'byteCodeSelectedIcon'
			ifAbsentPut:[ self byteCodeSelectedIconContents ].