instructions
if: bool goto: seqNum1 otherwise: seqNum2

	self doPending.
	gen if: bool goto: seqNum1 otherwise: seqNum2.
	gen mapBytesTo: currentInstr. 
