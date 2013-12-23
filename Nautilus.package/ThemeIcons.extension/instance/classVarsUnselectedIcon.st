*Nautilus-icons
classVarsUnselectedIcon 
	^ icons
			at: #'classVarsUnselectedIcon'
			ifAbsentPut:[ self classVarsUnselectedIconContents ].