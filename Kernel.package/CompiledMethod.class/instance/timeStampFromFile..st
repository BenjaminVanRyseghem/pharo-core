printing
timeStampFromFile: file
	"return the timestamp of this method for a given source filestream"
	| preamble stamp tokens tokenCount|
	preamble := self getPreambleFrom: file at: (0 max: self filePosition - 3).
	stamp := String new.
	tokens := (preamble includesSubstring: 'methodsFor:')
		ifTrue: [preamble parseLiterals]
		ifFalse: [Array new  "ie cant be back ref"].
	(((tokenCount := tokens size) between: 7 and: 8) and: [(tokens at: tokenCount - 5) == #methodsFor:])
		ifTrue:
			[(tokens at: tokenCount - 3) == #stamp:
				ifTrue: ["New format gives change stamp and unified prior pointer"
						stamp := tokens at: tokenCount - 2]].
	((tokenCount between: 5 and: 6) and: [(tokens at: tokenCount - 3) == #methodsFor:])
		ifTrue:
			[(tokens at: tokenCount  - 1) == #stamp:
				ifTrue: ["New format gives change stamp and unified prior pointer"
					stamp := tokens at: tokenCount]].
	^ stamp
