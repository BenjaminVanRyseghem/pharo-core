communication with model
wantsDroppedMorph: aMorph event: anEvent inMorph: source
	self dropEnabled
		ifFalse: [ ^ false ].
	^ self model wantsDroppedMorph: aMorph event: anEvent inMorph: source