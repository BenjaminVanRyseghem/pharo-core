accessing
stackSize
	"Answer a number of bytes, which takes a value of given type when pushed on stack"
	pointerArity > 0 ifTrue: [ ^ self pointerSize ].
	^ 8