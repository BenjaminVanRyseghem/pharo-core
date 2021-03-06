emitting code
pushAsValue: gen
	| asm |
	asm := gen asm.

	gen proxy positive64BitValueOf: (loader emitLoad: gen).

	asm 
		push: asm EDX;
		push: asm EAX.

	gen optCheckFailOnEveryArgument ifTrue: [
		gen proxy ifFailedEmit: [  gen failWithMessage: 'Argument coercion failed: unsigned 64-bit integer value expected' ].
	].