helpers
cFramePointer
	(self canUseStackPointer not
	or: [stackPtrAddress isNil]) ifTrue: [ 
		self error: 'cannot use c stack pointer directly' ].

	"answer a memory operand "	
	^ cFramePtrAddress asUImm32 ptr32