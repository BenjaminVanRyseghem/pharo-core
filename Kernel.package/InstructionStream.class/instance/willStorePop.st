testing
willStorePop
	"Answer whether the next bytecode is a store-pop."

	| byte |
	byte := self method at: pc.
	"130		extendedStoreAndPopBytecode"
	^ byte = 130
		or: [
			"142		storeAndPopRemoteTempLongBytecode"
			byte = 142
		or: [
			"96 103		storeAndPopReceiverVariableBytecode"
			"104 111	storeAndPopTemporaryVariableBytecode"
			byte between: 96 and: 111 ]]