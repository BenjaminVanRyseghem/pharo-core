instance creation
storeTemp: aName
	^ IRTempAccess new
		name: aName;
		store: true;
		yourself
