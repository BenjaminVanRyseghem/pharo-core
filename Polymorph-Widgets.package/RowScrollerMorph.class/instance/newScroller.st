as yet unclassified
newScroller
	"Answer a new morph for the scroll area."

	^(TransformMorph new
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #spaceFill)
		color: Color transparent;
		addMorph: self newScrollTarget