file system
getWindowsDirectory
	"Return the path to the windows directory"
	
	^self getEnvironmentVariable: 'windir'