*Nautilus-icons
stringIcon 
	^ icons
			at: #'stringIcon'
			ifAbsentPut:[ self stringIconContents ].