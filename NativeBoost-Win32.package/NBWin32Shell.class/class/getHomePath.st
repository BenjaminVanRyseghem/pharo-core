file system
getHomePath
	"Return the home path. Typically this is \Documents and Settings\{username}
	
		self getHomePath
	"
	
	^self getEnvironmentVariable: 'HOMEPATH'