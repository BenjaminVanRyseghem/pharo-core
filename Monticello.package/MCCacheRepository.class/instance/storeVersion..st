storing
storeVersion: aVersion
	cacheEnabled == true ifFalse: [ ^ self ].
	(self includesFileNamed: aVersion fileName) ifTrue: [ ^ self ].
	^ super storeVersion: aVersion.