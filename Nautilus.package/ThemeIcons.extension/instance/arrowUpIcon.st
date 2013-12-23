*Nautilus-icons
arrowUpIcon 
	^ icons
			at: #'arrowUpIcon'
			ifAbsentPut:[ self arrowUpIconContents ].