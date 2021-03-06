private
emitRead: aFieldName generator: gen
	| offset type asm mem |
			
	gen requestor: self class.
	type := self class fields typeOf: aFieldName.
	offset := self class fields offsetOf: aFieldName.

	asm := gen asm.
			
	asm pop: asm EAX.

	"load the value"
	mem := asm EAX ptr + offset.
	
	"read a value from given location and return oop"
	type readOop: mem generator: gen.

	^ gen