testing
hasTempVector: aSymbol
	blockSequence withAllSuccessorsDo: [ :seq |
		(seq hasTempVector: aSymbol) ifTrue: [ ^ true ].
		seq == lastBlockSequence ifTrue: [ ^ false ]].
	^false