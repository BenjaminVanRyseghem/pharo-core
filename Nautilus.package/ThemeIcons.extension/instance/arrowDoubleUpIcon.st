*Nautilus-icons
arrowDoubleUpIcon 
	^ icons
			at: #'arrowDoubleUpIcon'
			ifAbsentPut:[ self arrowDoubleUpIconContents ].