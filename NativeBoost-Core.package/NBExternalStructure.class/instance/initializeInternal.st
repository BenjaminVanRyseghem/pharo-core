initialize-release
initializeInternal
	"initialize receiver with data held in object memory heap "
	data := ByteArray new: self class instanceSize.

	self initialize.