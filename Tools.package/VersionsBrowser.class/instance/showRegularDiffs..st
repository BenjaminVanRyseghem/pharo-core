diffs
showRegularDiffs: aBoolean
	"Set whether I'm showing regular diffs as indicated"
	
	codePane removeAllMorphs.
	
	aBoolean
		ifTrue: [ codePane addMorph: self buildDiffCodePane ]
		ifFalse: [ codePane addMorph: (self buildDefaultCodePane: '') ].
		
	super showRegularDiffs: aBoolean