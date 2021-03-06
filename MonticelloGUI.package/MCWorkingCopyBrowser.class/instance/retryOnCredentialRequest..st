actions
retryOnCredentialRequest: aBlock
	aBlock	on: MCPermissionDenied do: [ :error | |credentials| 
		credentials := MCCredentialsRequest 
							signalUrl: repository location
							username: repository user
							password: repository password.
		credentials 
			ifNotNil: [ 
				self repository credentials: credentials.
				^ self retryOnCredentialRequest: aBlock ]]