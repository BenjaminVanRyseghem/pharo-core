testing
sessionChanged: anOldSession

	"Answer true if session has changed.
	Do a quick test if NB plugin is not enabled yet to prevent fails in
	resource finalization during image startup.
	
	anOldSession is object which retrieved before, using #uniqueSessionObject message.
	"
	self isEnabledOrNil == true ifTrue: [
		Current ifNil: [ ^ true ].
		^ (Current callgateFunctionAddress  == anOldSession) not
	].
	"plugin is not enabled, or prim failed, assume session changed"
	^ true
	
