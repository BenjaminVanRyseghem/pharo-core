accessing-64bit
getCommonProgramFilesX86
	"Return the common program files x86.
  	 typically this is C:\Program Files (x86)\Common Files
	
		self getCommonProgramFilesX86
	"
	
	^self getEnvironmentVariable: 'COMMONPROGRAMFILES(x86)'