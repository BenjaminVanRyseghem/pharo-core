system startup
startUp
	Smalltalk os isMacOS 
		ifTrue: [
			self useHTTPProxy 
				ifTrue: [
					(self getHTTPProxyHost findTokens: ':') ifNotEmpty: [ :p |
			 			NetworkSystemSettings 
							httpProxyServer: p first; 
							httpProxyPort: p second asInteger; 
							useHTTPProxy: true ] ]
				ifFalse: [
					NetworkSystemSettings useHTTPProxy: false ] ]