emitting code
pushAsValue: gen
	"push handle value"
	| asm proxy oop |
	
	proxy := gen proxy.
	asm := gen asm.
	
	oop := gen reserveTemp.
	loader emitLoad: gen to: oop.
	
	"we can skip class verification, if loader loads receiver, since nothing to fear there"
	loader isReceiver ifFalse: [
		self verifyClassOf: oop is: NBExternalAddress generator: gen.
	].

	proxy varBytesFirstFieldOf: oop.
	
	self valueSize = 4 ifTrue: [
		asm push: asm EAX ptr.
	] ifFalse: [ self notYetImplemented ].

	gen releaseTemps: 1.
