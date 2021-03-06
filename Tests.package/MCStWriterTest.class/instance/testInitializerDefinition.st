testing
testInitializerDefinition
	|chunk lastChunk penultChunk|
	writer writeSnapshot: self mockSnapshot.
	stream reset.
	[stream atEnd] whileFalse:
		[chunk := stream nextChunk.
		chunk isAllSeparators ifFalse: [
			penultChunk := lastChunk.
			lastChunk := chunk]].
	self assertContentsOf: penultChunk readStream match: self expectedInitializerA.
	self assertContentsOf: lastChunk readStream match: self expectedInitializerASubclass