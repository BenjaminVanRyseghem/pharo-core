*Nautilus-icons
dirtyPackageIcon 
	^ icons
			at: #'dirtyPackageIcon'
			ifAbsentPut:[ self dirtyPackageIconContents ].