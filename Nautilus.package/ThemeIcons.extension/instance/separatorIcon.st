*Nautilus-icons
separatorIcon 
	^ icons
			at: #'separatorIcon'
			ifAbsentPut:[ self separatorIconContents ].