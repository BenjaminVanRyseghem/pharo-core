accessing
numberSelectors
	| total |
	total := 0.
	self classesDo: [:each | 
		self selectorsForClass: each do: [ :sel | 
			total := total + 1 ]].
	^total