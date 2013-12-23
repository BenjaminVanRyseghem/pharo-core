*Nautilus-icons
instVarsUnselectedIcon 
	^ icons
			at: #'instVarsUnselectedIcon'
			ifAbsentPut:[ self instVarsUnselectedIconContents ].