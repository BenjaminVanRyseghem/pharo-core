emitting code
pushAsPointer: gen 
	"by default, push argument as a bytearray ptr"
	
	"may accept:
		- nil
		- variable bytes oop
		- external address "
	| asm proxy notNil done oop  notExternalAddress |
	
	asm := gen asm.
	proxy := gen proxy.
	done := asm uniqueLabelName: 'done'.
	oop := gen reserveTemp.
	
	"load argument oop"
	loader emitLoad: gen to: oop.
	
	"handle nils, if we care"
	gen optCoerceNilToNull ifTrue: [
		notNil := asm uniqueLabelName: 'notNil'.
		proxy nilObject.
		asm cmp: asm EAX with: oop;
		jne: notNil;
		xor: asm EAX with: asm EAX;
		jmp: done;
		label: notNil.
	].

	"handle ExternalAddress, if we care"
	gen optAllowExternalAddressPtr ifTrue: [ | oopClass |
		oopClass := gen reserveTemp.
		notExternalAddress := asm uniqueLabelName: 'notExternalAddress'.
		proxy fetchClassOf: oop.
		asm mov: asm EAX to: oopClass.

		gen emitFetchClass: NBExternalAddress.
		asm cmp: asm EAX with: oopClass.
		asm jne: notExternalAddress.
		
		proxy fetchPointer: 0 ofObject: oop.  
		
		asm jmp: done.
		asm label: notExternalAddress.
		gen releaseTemps: 1.
	].

	"the last case is a byte/word array, 
	simply push a pointer to first indexable field of oop"

	gen optAllowByteArraysPtr ifTrue: [
		proxy isBytesOrWords: oop ifNotJumpTo: gen failedLabel.
		proxy varBytesFirstFieldOf: oop.
		asm jmp: done.
	].

	"if we get here, we fail"
	asm jmp: gen failedLabel.

	"and if we get here, we ok to proceed"
	asm label: done.
	asm push: asm EAX.

	gen releaseTemps: 1.
	