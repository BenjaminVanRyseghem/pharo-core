C heap access
realloc: address newSize: aSize

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout function: #(ulong realloc (ulong address, ulong aSize)) module: 'crtdll.dll'