control panel applets
showInternetSettingsConnections
	"  	
		self showInternetSettingsConnections
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,4'