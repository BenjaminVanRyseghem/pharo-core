*Nautilus-icons
sourcePressedIcon 
	^ icons
			at: #'sourcePressedIcon'
			ifAbsentPut:[ self sourcePressedIconContents ].