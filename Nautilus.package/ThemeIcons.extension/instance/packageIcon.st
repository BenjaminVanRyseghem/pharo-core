*Nautilus-icons
packageIcon 
	^ icons
			at: #'packageIcon'
			ifAbsentPut:[ self packageIconContents ].