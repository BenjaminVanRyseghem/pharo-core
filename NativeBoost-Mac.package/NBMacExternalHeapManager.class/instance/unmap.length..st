private
unmap: addr  length: len 
		
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>

	"unmap memory page"

	^ self nbCallout
		function: #( int munmap (uint addr, ulong  len)  ) 
		module: RTLD_DEFAULT
 