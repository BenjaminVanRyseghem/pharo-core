stepping and presenter
stepAction
	wait = 0
		ifFalse: [ 
			wait := wait - 1.
			^ self ].
	frontward
		ifTrue: [ self stepFrontward ]
		ifFalse: [ self stepBackward ].
	self privateSetContents: (initialContents allButFirst: index)