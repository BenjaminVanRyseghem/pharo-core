memory operations
free: address

	"Free the external memory, allocated using #allocate: message.
	Note: never pass pointers, which you allocated by other means"
	
	heap free: address value