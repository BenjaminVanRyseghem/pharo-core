initialization
initialize
	"self initialize"
	" Here the platform codes, defined to identify a platform on which VM runs.
	A compiled method which contain native code using this id to indicate for what platform 
	the native code is generated. 
	A primitive, which responsible for running native code, checks that platform id in method matching the platform id,
	specified by plugin, and if not, then primitive fails without attempt to run native code"

	"x86 platform codes"
	Linux32PlatformId := 1.
	Mac32PlatformId := 2. 
	Win32PlatformId := 3.

	self 
		initErrorCodes;
		initVMErrorCodes;
		initErrorDescriptions.
	