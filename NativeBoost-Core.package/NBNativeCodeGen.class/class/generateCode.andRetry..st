instance creation
generateCode: aBlock andRetry: retryCtx

	| method bytes newMethod args |

	method := retryCtx method.

	NBRecursionDetect in: method during: [ 
		bytes := aBlock value: (self newForMethod: method).
	].

	DebugOn == true ifTrue: [ 
		(FileStream newFileNamed: 'asm.bin') nextPutAll: bytes; close.
		self halt ].
	
	newMethod := self installNativeCode: bytes into: method.
	
	newMethod primitive = self jitPrimitiveNumber ifTrue: [ newMethod forceJIT ].
	^ self retrySend: retryCtx
