accessing functions
cFramePointerAddress

	"to prevent recursion, we prohibit using stack pointer address when bootstrapping"
	NativeBoost forCurrentPlatform isBootstrapping ifTrue: [ ^ nil ].
	
	^ NativeBoost loadSymbol: #CFramePointer 