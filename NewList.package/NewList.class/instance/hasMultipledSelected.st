private
hasMultipledSelected
	| int |
	
	int := 0.
	selectedIndexes do: [:ass |
		ass value ifTrue: [ int := int + 1 ].
		int = 2 ifTrue: [ ^ true ]].
	^ false