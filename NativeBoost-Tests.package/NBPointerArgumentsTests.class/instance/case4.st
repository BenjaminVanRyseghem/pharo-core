generation options
case4

	"allow only var-byte objects as pointer arguments.
	by turning off optAllowExternalAddressPtr this means that external address 
	will be treated as any other var-byte object and therefore an address of memory
	where address value is held will be passed to function instead of address value
	"
	^#( +optAllowByteArraysPtr -optAllowExternalAddressPtr )