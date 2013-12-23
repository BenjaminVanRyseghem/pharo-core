*Nautilus-icons
uncommentedClassIcon 
	^ icons
			at: #'uncommentedClassIcon'
			ifAbsentPut:[ self uncommentedClassIconContents ].