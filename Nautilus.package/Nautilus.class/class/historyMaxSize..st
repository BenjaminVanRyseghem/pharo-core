accessing
historyMaxSize: anInteger

	(anInteger isKindOf: Integer) ifFalse: [ ^ self ].
	anInteger > 0 ifFalse: [ ^ self ].
	HistoryMaxSize := anInteger