*Nautilus-icons
groupIcon 
	^ icons
			at: #'groupIcon'
			ifAbsentPut:[ self groupIconContents ].