accessing
historyMaxSize

	^ HistoryMaxSize ifNil: [ HistoryMaxSize := self defaultMaxSize ]