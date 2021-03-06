private
createMoveTestCode

	^ NBFFICallout new
		anonSpec: #( int ());
		cdecl;
		generate: [:gen :proxy :asm |
			| methodOop |
			
			methodOop := gen reserveTemp.
			
			proxy primitiveMethod.
			asm mov: asm EAX to: methodOop.
			
			"call fullGC to trigger memory compaction"
			proxy fullGC.
			
			"return the difference between old primitiveMethod oop value and new one"
			proxy primitiveMethod.
			asm sub: asm EAX with: methodOop.

	].