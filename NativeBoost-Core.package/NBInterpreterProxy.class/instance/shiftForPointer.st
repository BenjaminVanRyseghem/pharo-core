helpers
shiftForPointer
	"answer the shift bits for pointer size"
	^ self pointerSize highBit - 1
