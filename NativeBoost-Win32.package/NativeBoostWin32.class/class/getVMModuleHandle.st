accessing
getVMModuleHandle
"The GetModuleHandle function retrieves a module handle for the specified module if the file has been mapped into the address space of the calling process."

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self nbCallout
		stdcall;
		function: #( HMODULE GetModuleHandleA (0) ) 
		module: #Kernel32
