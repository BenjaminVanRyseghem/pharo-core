C heap access
malloc: aSize

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout function: #( void* malloc (ulong aSize) ) module: 'crtdll.dll'