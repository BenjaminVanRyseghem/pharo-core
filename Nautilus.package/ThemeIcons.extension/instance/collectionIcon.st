*Nautilus-icons
collectionIcon 
	^ icons
			at: #'collectionIcon'
			ifAbsentPut:[ self collectionIconContents ].