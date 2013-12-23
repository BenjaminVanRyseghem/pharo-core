*Nautilus-icons
sourceUnselectedIcon 
	^ icons
			at: #'sourceUnselectedIcon'
			ifAbsentPut:[ self sourceUnselectedIconContents ].