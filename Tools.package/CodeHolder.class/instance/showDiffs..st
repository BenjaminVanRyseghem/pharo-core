diffs
showDiffs: aBoolean
	"Set whether I'm showing diffs as indicated"

	self showingAnyKindOfDiffs
		ifFalse:
			[aBoolean ifTrue:
				[self contentsSymbol: self defaultDiffsSymbol]]
		ifTrue:
			[aBoolean ifFalse:
				[self contentsSymbol: #source]].
	self setContentsToForceRefetch.
	self contentsChanged