control panel applets
showPowerOptions
	"
	self showPowerOptions
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Ups.cpl'