helper
lazyInitialization
	|foo|
	^foo ifNil: [ foo := 5 ]