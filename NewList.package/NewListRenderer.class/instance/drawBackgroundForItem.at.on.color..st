drawing - private
drawBackgroundForItem: item at: index on: aCanvas color: aColor
	| frame  |
	
 	frame := self selectionFrameForItem: item at: index.
	
	aCanvas
		fillRectangle: frame
		color: aColor