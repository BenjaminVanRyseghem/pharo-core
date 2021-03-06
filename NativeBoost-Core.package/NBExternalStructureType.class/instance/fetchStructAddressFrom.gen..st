emitting code
fetchStructAddressFrom: oop gen: gen
	"Input: an instance of NBExternalStructure subclass in oop
	Output: the address of struct's first field is in EAX"
	| asm proxy dataOop |
	
	
	proxy := gen proxy.
	asm := gen asm.
	dataOop := gen reserveTemp.
	
	proxy fetchPointer: (self dataIvarIndex) ofObject: oop.

	asm mov: asm EAX to: dataOop.
	
	self fetchAddressFromData: dataOop gen: gen.
	
	gen releaseTemps: 1.