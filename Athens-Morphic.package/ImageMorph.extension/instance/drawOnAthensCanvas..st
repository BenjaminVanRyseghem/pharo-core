*Athens-Morphic
drawOnAthensCanvas: aCanvas
	
	| cached |
	
	cached := aCanvas cacheAt: image ifAbsentPut: [
		image asAthensPaintOn: aCanvas.
		].
	
	aCanvas setPaint: cached.
		
		aCanvas paintTransform restoreAfter: [
			aCanvas paintTransform translateBy: self innerBounds origin "negated".
		
			aCanvas drawShape: self innerBounds.
		].
	
