initialize
contents: anObject

	contents := anObject.
	hourGlass ifNotNil: [ hourGlass terminate ].
	hourGlass := [
		(Delay forMilliseconds: timeToLive asMilliSeconds) wait.
		contents := defaultValue ] fork.