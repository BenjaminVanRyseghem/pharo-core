instructions
storeRemoteTemp: name inVector: tempVectorName
	stream nextPutAll: 'storeRemoteTemp: '.
	name printOn: stream..
	stream nextPutAll: ' inVector: '.
	tempVectorName printOn: stream.