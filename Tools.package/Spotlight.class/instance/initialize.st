initialization
initialize 
	super initialize.
	self beSticky.
	self 
		layoutPolicy: TableLayout new;
	 	listDirection: #leftToRight;
	 	wrapCentering: #center;
	 	hResizing: #spaceFill;
	 	vResizing: #spaceFill;
	 	layoutInset: self defaultLayoutInset ;	
		cellInset: 5.
	
	self addMorphBack: Smalltalk ui icons smallFindIcon asMorph.

	search :=  self createSearchMorph
		crAction: [ :text | self accepted ];
		yourself.
	self addMorphBack: search.

	self 
		bindKeyCombination: Character escape 
		toAction: [ self close ].