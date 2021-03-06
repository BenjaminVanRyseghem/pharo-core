emitting code
prepareReturnValue: gen for: callinfo

	| asm proxy temp |
	
	asm := gen asm.
	proxy := gen proxy.
	
	(pointerArity = 0 and: [ self returnViaRegisters not ]) ifTrue: [
		"we should instantiate a new instance of struct 
		and push a pointer to its first byte on a stack (so C function will know where to store return value(s))"
		returnOop := gen reserveTemp.
		temp := gen reserveTemp.
		
		proxy createInstanceOf: objectClass.
		proxy pushRemappableOop: asm EAX.
		
		proxy createInstanceOf: ByteArray size: objectClass instanceSize.
		
		asm mov: asm EAX to: temp.
		proxy popRemappableOop.

		asm mov: asm EAX to: returnOop.
		proxy storePointer: self dataIvarIndex ofObject: asm EAX withValue: temp.
		
		asm mov: temp to: asm EAX.  
		proxy varBytesFirstFieldOf: asm EAX. "in EAX is pointer to first byte of struct"
		
		asm noticePush: asm pointerSize forCall: callinfo.
		asm push: asm EAX.
		gen releaseTemps: 1.
		
	]
