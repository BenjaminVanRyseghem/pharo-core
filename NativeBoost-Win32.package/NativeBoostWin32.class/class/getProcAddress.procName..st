library loading
getProcAddress: hModule procName: lpProcName 
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout
		stdcall;
		function: #( 
		FARPROC GetProcAddress (
			HMODULE hModule,
			LPCSTR lpProcName ) ) 
		module: #Kernel32
