*Nautilus-icons
abstractIcon 
	^ icons
			at: #'abstractIcon'
			ifAbsentPut:[ self abstractIconContents ].