updating
updateScrollerWithMultipleElements
	| size panel totalHeight delta scroller firstHeight |
	
	delta := editors second font height * 2 + 10.
	size := editors size.
	firstHeight := self height - delta.
	
	totalHeight := (editors allButFirst inject: 0 into: [ :s :e | s + e height ]) + firstHeight + ((size - 1) * 4).
	
	panel := self newProportionalPanelMorph.
	
	scroller := TransformWithLayoutMorphForMultipleEditors new.
	container := self newScrollPaneWithScroller: scroller target: panel.
	container scroller changeTableLayout.
	
	self updateEditorsWith: firstHeight over: totalHeight into: panel.

	self addAllButton.
	self addButtons.
	
	self addHFill.
	
	panel hResizing: #spaceFill.
	panel extent: 0 @ (totalHeight - delta)