ui requests
inform: aString

	(ProvideAnswerNotification signal: aString) ifNotNil: [:answer | ^true].
	Smalltalk addDeferredStartupAction: [ UIManager default inform: aString ].