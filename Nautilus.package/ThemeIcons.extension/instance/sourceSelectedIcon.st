*Nautilus-icons
sourceSelectedIcon 
	^ icons
			at: #'sourceSelectedIcon'
			ifAbsentPut:[ self sourceSelectedIconContents ].