accessing functions
stackPointerAddress

	"to prevent recursion, we prohibit using stack pointer address when bootstrapping"
	NativeBoost forCurrentPlatform isBootstrapping ifTrue: [ ^ nil ].
	
	^ self primStackPointerAddress 