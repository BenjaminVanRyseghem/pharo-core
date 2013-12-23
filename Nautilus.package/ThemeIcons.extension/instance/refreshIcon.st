*Nautilus-icons
refreshIcon 
	^ icons
			at: #'refreshIcon'
			ifAbsentPut:[ self refreshIconContents ].