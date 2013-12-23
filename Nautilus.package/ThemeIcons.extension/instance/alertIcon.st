*Nautilus-icons
alertIcon 
	^ icons
			at: #'alertIcon'
			ifAbsentPut:[ self alertIconContents ].