*Nautilus-icons
monticelloPackageIcon 
	^ icons
			at: #'monticelloPackageIcon'
			ifAbsentPut:[ self monticelloPackageIconContents ].