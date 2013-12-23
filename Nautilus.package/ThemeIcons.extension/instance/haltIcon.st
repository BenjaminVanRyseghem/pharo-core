*Nautilus-icons
haltIcon 
	^ icons
			at: #'haltIcon'
			ifAbsentPut:[ self haltIconContents ].