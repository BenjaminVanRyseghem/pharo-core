control panel applets
showJoystickSettings
	"	
		self showJoystickSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL joy.cpl'