tests - errors
testStoreRemoteTempOutOfRangeInVectorAt
	
	self should: [ IRBytecodeGenerator new
					numArgs: 0;
					storeRemoteTemp: 257 inVectorAt: 1 ] 
		raise: Error 
		withExceptionDo: [:exception | self assert: (exception messageText = 'remoteTempIndex out of range 0 to 255')]
	