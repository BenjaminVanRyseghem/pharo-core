computation
indent
	"Get the indentation value for the current node. The indentation equals the number of ancestors."
	| indent cursor |
	indent := 0.
	cursor := ancestor.
	[ cursor isNil ]
		whileFalse: [ 
			indent := indent + 1.
			cursor := cursor ancestor ].
	^ indent