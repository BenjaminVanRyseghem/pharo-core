accessing
label: aStringOrTextOrMorph font: aFont
	"Label this button with the given string or morph."

	| r |
	self removeAllMorphs.
	"nest label in a row for centering"
	r := AlignmentMorph newRow
		borderWidth: 0;
		layoutInset: 0;
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		wrapCentering: #center;
		listCentering: #center;
		cellPositioning: #center.
	label := aStringOrTextOrMorph.	
	labelMorph := aStringOrTextOrMorph isMorph
						ifTrue: [ aStringOrTextOrMorph ]
						ifFalse: [ self newLabel: aFont ].
	r addMorph: labelMorph.
	self addMorph: r.
	self labelMorph enabled: self enabled.
	self updateLabelEnablement
