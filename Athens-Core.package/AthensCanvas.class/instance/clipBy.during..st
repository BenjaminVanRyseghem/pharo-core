clipping
clipBy: aRectangle during: aBlock
	
	" Set a clipping rectangle during drawing operations performed in a block.
	Note that clipping rectangle are intetersected with currently active clipping
	rectangle "
	
	 ^surface clipBy: aRectangle during: aBlock