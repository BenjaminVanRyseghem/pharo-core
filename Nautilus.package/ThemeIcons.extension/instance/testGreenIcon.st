*Nautilus-icons
testGreenIcon 
	^ icons
			at: #'testGreenIcon'
			ifAbsentPut:[ self testGreenIconContents ].