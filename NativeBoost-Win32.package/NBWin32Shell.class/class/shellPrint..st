operations
shellPrint: file
	"
	self shellPrint: 'c:\index.html'
	"

	^self shellExecute: 'print' file: file parameters: '' directory: '' show: SW_SHOW