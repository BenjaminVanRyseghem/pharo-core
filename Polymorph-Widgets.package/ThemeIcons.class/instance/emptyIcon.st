accessing - icons
emptyIcon 
	^ icons
			at: #'emptyIcon'
			ifAbsentPut: [ self blankIconContents ].