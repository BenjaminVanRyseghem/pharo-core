instructions
send: selector

	self doPending.
	gen send: selector.
	gen mapBytesTo: currentInstr. 

