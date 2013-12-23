*Nautilus-icons
greenArrowUpAndDownIcon 
	^ icons
			at: #'greenArrowUpAndDownIcon'
			ifAbsentPut:[ self greenArrowUpAndDownIconContents ].