as yet unclassified
cache: dir
	"Cache the contents of the given directory and answer them."

	self entryCacheDirectory = dir
		ifFalse: [Cursor wait showWhile: [
					self
						entryCache: (dir isReadable ifFalse: [ #() ] ifTrue: [ dir entries ]);
						entryCacheDirectory: dir]].
	^self entryCache