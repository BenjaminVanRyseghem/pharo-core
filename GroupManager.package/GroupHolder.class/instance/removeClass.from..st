protocol
removeClass: aClass from: aStaticGroup 
	
	^ aStaticGroup
		ifAllowed: [ aStaticGroup removeClass: aClass ]
		ifNot: [ self openReadOnlyError ]