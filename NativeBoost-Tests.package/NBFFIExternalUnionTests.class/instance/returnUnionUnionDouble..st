primitives
returnUnionUnionDouble: aN
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestUnionWithUnion (double aN) ) 
		emit: [:gen :proxy :asm |
			NativeBoost platformId ~= NativeBoostConstants linux32PlatformId 
				ifTrue:[
					asm 
						pop: asm EAX;
						pop: asm EDX.]
				ifFalse:[
					asm
						pop: asm EAX;
						pop: asm ECX;
						pop: asm EDX;
						mov: asm ECX to: asm EAX ptr;
						mov: asm EDX to: asm EAX ptr + 4;
						push: asm EAX.					
					]
		]
	