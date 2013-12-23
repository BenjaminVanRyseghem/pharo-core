*Nautilus-icons
testNotRunIcon 
	^ icons
			at: #'testNotRunIcon'
			ifAbsentPut:[ self testNotRunIconContents ].