control panel applets
showInternetSettingsGeneral
	"  	
		self showInternetSettingsGeneral
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,0'