settings
isAnExceptionFor: anUrl
	^ HTTPProxyExceptions contains: [ :domain | anUrl host = domain.].