visiting
visitSequenceNode: aSequenceNode
	| lastResult |
	
	aSequenceNode statements do: [ :statement|
		lastResult := self interpret: statement.
		self ifSkip: [ ^ lastResult ]].
	
	self updateGotoContext.
		
	^ lastResult