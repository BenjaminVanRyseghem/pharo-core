operations
shellRunDLL: cmd
	"
	self shellRunDLL: 'shell32.dll,Control_RunDLL odbccp32.cpl'
	"
	
	^self shellExecute: 'open' file: 'rundll32.exe' parameters: cmd directory: '' show: SW_SHOW