bootstrapping
bootstrapLoadFunction: fnName from: aModuleName into: returnValueBuffer
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>
	" call an interpreter proxy function 
		void* ioLoadFunctionFrom(char*, char*)
	to retrieve a function pointer of a registered module
	"
	^ self nbCallout 
		function: #( NBBootstrapUlong (String fnName,  String aModuleName) )
		emit: [:gen |	gen proxy callFn: #ioLoadFunction:From: ].
	