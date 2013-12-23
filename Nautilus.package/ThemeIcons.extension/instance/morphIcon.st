*Nautilus-icons
morphIcon 
	^ icons
			at: #'morphIcon'
			ifAbsentPut:[ self morphIconContents ].