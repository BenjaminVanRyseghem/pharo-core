*Nautilus-icons
classVarsSelectedIcon 
	^ icons
			at: #'classVarsSelectedIcon'
			ifAbsentPut:[ self classVarsSelectedIconContents ].