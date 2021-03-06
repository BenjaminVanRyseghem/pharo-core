visiting
visitCascadeNode: aCascadeNode
	| receiver lastResult |
	
	receiver := self interpret: aCascadeNode receiver.
	
	aCascadeNode messages do: [ :aMessageNode|
		lastResult := self visitMessageNode: aMessageNode receiver: receiver.
		self ifSkip: [ ^ lastResult ]].
	
	^ lastResult