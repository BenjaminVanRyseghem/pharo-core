actions
storeDependencies: newVersion in: aRepository
	self retryOnCredentialRequest: [ aRepository storeDependencies: newVersion ]