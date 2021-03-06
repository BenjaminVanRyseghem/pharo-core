construction
addLowerPanesTo: window at: nominalFractions with: editString

	| verticalOffset row innerFractions tm |
	tm := self buildMorphicCodePaneWith: editString.


	row := AlignmentMorph newColumn
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 0;
		borderWidth: 1;
		borderColor: Color black;
		layoutPolicy: ProportionalLayout new.

	verticalOffset := 0.
	innerFractions := 0@0 corner: 1@0.
	verticalOffset := self addOptionalAnnotationsTo: row at: innerFractions plus: verticalOffset.
	verticalOffset := self addOptionalButtonsTo: row  at: innerFractions plus: verticalOffset.

	row 
		addMorph: (tm borderWidth: 0)
		fullFrame: ((innerFractions withBottom: 1) asLayoutFrame topOffset: verticalOffset).
	window 
		addMorph: row
		frame: nominalFractions.

	row on: #mouseEnter send: #paneTransition: to: window.
	row on: #mouseLeave send: #paneTransition: to: window.