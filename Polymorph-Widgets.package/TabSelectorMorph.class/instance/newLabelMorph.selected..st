as yet unclassified
newLabelMorph: aStringOrMorph selected: selectedStringOrMorph
	"Answer a new label morph with the given label text or morph and
	alternate when selected."

	^TabLabelMorph new
		roundedCorners: #(1 4);
		cornerStyle: self cornerStyle;
		changeTableLayout;
		listDirection: #leftToRight;
		listCentering: #center;
		layoutInset: (self theme tabLabelInsetFor: self);
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		label: aStringOrMorph selected: selectedStringOrMorph;
		font: self font;
		on: #mouseDown send: #tabClicked:with: to: self;
		tabSelector: self