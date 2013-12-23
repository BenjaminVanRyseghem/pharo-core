I am an important part of a native code generation toolchain, which provides an access to all interpreterProxy functions.

A native code, inevitably, needs to convert a method's arguments to their native representations, and access a different fields of oops. For this, we need to use interpreter proxy methods.

Code generator options, used by proxy: 

	#optNonMovable
		- The code is a standalone routine, which 
		a) will be placed into a non-movable memory region.
		b) can be called by any other function, not by primitiveNativeCall, therefore
	
	#optDirectProxyFnAddress
		- call proxy functions directly, instead of loading 
		their address indirectly via interpreterProxy struct

	 #optUseStackPointer 
		- use a direct ST stack pointer, initially retrieved using #getStackPointer
