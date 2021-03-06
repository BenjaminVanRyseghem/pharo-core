text
textSizeOf: aText

	| result count ignoredCharacters |
	result := 0.
	count := true.
	ignoredCharacters := self ignoredCharacters.
	aText do: [:char |
		(char = $")
			ifTrue: [ count := count not ]
			ifFalse: [
				((ignoredCharacters includes: char) not and: [ count ])
					ifTrue: [ result := result + 1 ]]].
	^ result.