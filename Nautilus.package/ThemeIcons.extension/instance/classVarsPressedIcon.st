*Nautilus-icons
classVarsPressedIcon 
	^ icons
			at: #'classVarsPressedIcon'
			ifAbsentPut:[ self classVarsPressedIconContents ].