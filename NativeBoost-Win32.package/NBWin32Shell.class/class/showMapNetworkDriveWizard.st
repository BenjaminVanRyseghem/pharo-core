control panel applets
showMapNetworkDriveWizard
	"
	self showMapNetworkDriveWizard
	"

	^self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL Connect'