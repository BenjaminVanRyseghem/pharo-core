*Nautilus-icons
instVarsPressedIcon 
	^ icons
			at: #'instVarsPressedIcon'
			ifAbsentPut:[ self instVarsPressedIconContents ].