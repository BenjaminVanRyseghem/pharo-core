private
setEnv: nameString value: valueString
	"This method calls the Standard C Library getenv() function"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	 ^ self nbCall: #( int setenv (String nameString, String valueString, 1) ) module: NativeBoost CLibrary