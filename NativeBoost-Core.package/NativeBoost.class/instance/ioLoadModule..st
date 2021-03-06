retrieving symbols
ioLoadModule: aModuleName
	" call an interpreter proxy function 
		void* ioLoadModuleOfLength(char*, int)
	to retrieve an external module handle
	
	if module can't be loaded, or not found , answer nil
	"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBNativeCodeGen methodAssembly: [:gen |
		| fail retHandle proxy asm moduleNameOop end |
		moduleNameOop := gen reserveTemp.
		asm := gen asm.
		proxy := gen proxy.
		fail := asm uniqueLabelName: 'failed'.
		retHandle := asm uniqueLabelName: 'retHandle'.
		end := asm uniqueLabelName: 'end'.
		
		proxy stackValue: 0.
		asm mov: EAX to: moduleNameOop.
		proxy isBytes: EAX.
		asm or: EAX with: EAX.
		asm jz: fail.
		proxy byteSizeOf: moduleNameOop.
		asm push: EAX.   " push length "
	
		proxy varBytesFirstFieldOf: moduleNameOop.
		asm push: EAX. "push first indexable field address"
		
		proxy callFn: #ioLoadModule:OfLength: .
		asm 
			or: EAX with: EAX;
			jnz: retHandle.
			
		proxy nilObject.
		asm jmp: end.
		
	asm label: retHandle.
		proxy signed32BitIntegerFor: EAX.
		asm jmp: end.
		
	asm label: fail.
		proxy primitiveFail.
	asm label: end.
		gen epilogue
	]
