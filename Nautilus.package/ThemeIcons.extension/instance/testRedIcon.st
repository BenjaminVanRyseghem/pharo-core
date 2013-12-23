*Nautilus-icons
testRedIcon 
	^ icons
			at: #'testRedIcon'
			ifAbsentPut:[ self testRedIconContents ].