actions
storeVersion: newVersion in: aRepository
	self retryOnCredentialRequest: [ aRepository storeVersion: newVersion ]