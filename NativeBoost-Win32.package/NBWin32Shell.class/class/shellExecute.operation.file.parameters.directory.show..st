api calls
shellExecute: hwnd operation: lpOperation file: lpFile parameters: lpParameters directory: lpDirectory show: nShowCmd
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^ self nbCall: #( 
			HINSTANCE ShellExecuteA(
     				HWND hwnd,
     				LPCTSTR lpOperation,
         			LPCTSTR lpFile,
     				LPCTSTR lpParameters,
     				LPCTSTR lpDirectory,
        			INT nShowCmd)) module: 'Shell32.dll'
	
