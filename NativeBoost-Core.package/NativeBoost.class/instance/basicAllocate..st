memory operations
basicAllocate: aSize
	"Allocate a memory block with given size in bytes,
	answer an NBExternalAddress instance - address to the beginning of memory block,
	or nil if allocation fails."
	self subclassResponsibility 