flags
protFlags
	"since NativeBoost using heap for placing executable code there,
	it is important that all allocated memory should be executable"
	^  (PROT_READ bitOr: PROT_WRITE) bitOr: PROT_EXEC