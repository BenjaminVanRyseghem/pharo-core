class initialization
startUp: resuming

	"only handle when lauching a new image"
	resuming ifFalse: [ ^ self ].

	Smalltalk addDeferredStartupAction: [ self new activate ]	
