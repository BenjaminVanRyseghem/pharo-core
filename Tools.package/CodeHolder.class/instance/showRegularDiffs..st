diffs
showRegularDiffs: aBoolean
	"Set whether I'm showing regular diffs as indicated"

	self showingRegularDiffs
		ifFalse:
			[aBoolean ifTrue:
				[self contentsSymbol: #showDiffs]]
		ifTrue:
			[aBoolean ifFalse:
				[self contentsSymbol: #source]].
	self setContentsToForceRefetch.
	self contentsChanged