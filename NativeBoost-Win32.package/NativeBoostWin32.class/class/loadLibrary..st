library loading
loadLibrary: libName
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout
		stdcall function: #( long LoadLibraryA ( String libName )) module: #Kernel32
