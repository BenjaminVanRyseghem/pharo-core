instructions
storePopRemoteTemp: tempIndex inVectorAt: tempVectorIndex

	stack pop.
	
	"142 	10001110 kkkkkkkk jjjjjjjj 	Pop and Store Temp At kkkkkkkk In Temp Vector At: jjjjjjjj"
	(tempIndex >= 0 and: [tempIndex < 256
	 and: [tempVectorIndex >= 0 and: [tempVectorIndex < 256]]]) ifTrue:
		[self
			nextPut: ( Bytecodes at: #storePopRemoteTempInVectorAt);
			nextPut: tempIndex -1;
			nextPut: tempVectorIndex - 1.
		 ^self].
	tempIndex >= 256 ifTrue:
		[^self error: 'remoteTempIndex out of range 0 to 255'].
	tempVectorIndex >= 256 ifTrue:
		[^self error: 'tempVectorIndex out of range range 0 to 255']