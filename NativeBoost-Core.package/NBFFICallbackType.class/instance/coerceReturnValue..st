emitting code
coerceReturnValue: gen

	"trunk is in EAX. 
	first, create an instance of NBExternalHandle. Place the trunk there ,
	then create an instance of receiver and place trunk oop in its trunk ivar"

	| asm proxy result trunkOop oop done |
	
	proxy := gen proxy.
	asm := gen asm.
	result := gen reserveTemp.
	trunkOop := gen reserveTemp.
	oop := gen reserveTemp.
	done := asm uniqueLabelName: 'done'.
	
	asm mov: asm EAX to: result.

	gen optReturnNullAsNil ifTrue: [ | notnil |
		notnil := asm uniqueLabelName: 'notNil'.
		
		asm 
			or: asm EAX with: asm EAX;
			jne: notnil.
		proxy nilObject.
		asm jmp: done.
		asm label: notnil.
	].	
	gen emitFetchClass: NBExternalAddress.
	
	proxy instantiateClass: asm EAX indexableSize: 4.
	asm mov: asm EAX to: trunkOop.

	proxy firstIndexableField: asm EAX.
	asm mov: result to: asm ECX;
		mov: asm ECX to: asm EAX ptr.
	
	proxy pushRemappableOop: trunkOop.
	
	gen emitFetchClass: callbackClass.
	
	proxy instantiateClass: asm EAX indexableSize: 0.
	"EAX <- our instance "
	asm mov: asm EAX to: oop.
	proxy popRemappableOop.
	asm mov: asm EAX to: trunkOop.
	
	proxy storePointer: self trunkIvarIndex ofObject: oop  withValue: trunkOop.
	
	asm mov: oop to: asm EAX.  "return the oop"

	gen releaseTemps: 3.
	asm label: done.