control panel applets
showCOMPortsSettings
	"
	self showCOMPortsSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL ports.cpl' 