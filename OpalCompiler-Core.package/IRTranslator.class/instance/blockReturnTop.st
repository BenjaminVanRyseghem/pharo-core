instructions
blockReturnTop

	self doPending.
	self popScope.
	gen blockReturnTop.
	gen mapBytesTo: currentInstr. 
