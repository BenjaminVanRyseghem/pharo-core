debugger support
isNativeMethod: aCompiledMethod
	| lit |
	
	lit := aCompiledMethod literalAt: 1.
	^ aCompiledMethod trailer kind == #NativeCodeTrailer 
		and: [ lit first == #NativeBoostPlugin and: [ lit second == #primitiveNativeCall]]