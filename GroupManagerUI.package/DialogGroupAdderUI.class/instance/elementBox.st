display
elementBox

	^ GroupboxMorph new 
		addContentMorph: self buildTextMorph;
		label: 'Item to add:';
		hResizing: #spaceFill;
		vResizing: #shrinkWrap