accessing
protocolsFor: aClass
	^aClass organization realCategories select: [:each | self includesProtocol: each in: aClass]