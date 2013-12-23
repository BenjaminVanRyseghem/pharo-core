*Nautilus-icons
instVarsSelectedIcon 
	^ icons
			at: #'instVarsSelectedIcon'
			ifAbsentPut:[ self instVarsSelectedIconContents ].