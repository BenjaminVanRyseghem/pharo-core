position
unoccupiedPositionTopLeft

	| b morphs |
	b := World topLeft extent: self extent.
	morphs := self class allSubInstances select: [:m | m world == World].
	[self is: b saneWithRespectTo: morphs] whileFalse: [
		b := b translateBy: 0@10.
		b bottom > World height ifTrue: [^ World topLeft ]].
	^ b origin