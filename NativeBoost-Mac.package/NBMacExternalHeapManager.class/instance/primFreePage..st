memory management
primFreePage: aMemoryPage

	"call munmap()"

	| res |
	res := self unmap: aMemoryPage address length: aMemoryPage length.
	res = 0 ifFalse: [ self error: 'error during unmapping virtual memory page' ]