I'm a generator of native code. I can create C style functions, providing convenient syntactic sugar for accessing the function arguments in function body (but you still have to write the body of the function with the assembler).
I can be used for implementing small helper routines, low-level callbacks or functions which will run in separate (to VM) thread.

A function spec is used to help with fetching arguments from call stack by using #arg: method for that:

 NBNativeFunctionGen 
		cdecl: #( int (byte* a, byte * b) )
		emit: [:gen | | asm |
			asm := gen asm.
			"this will load argument from stack to register"
			asm mov: (gen arg: #b) to: EAX;
		].

By invoking the expression above, I will generate a native code and keep it in my instance. 
Now to put this code in use, it must be installed  (see #install) into external memory. Then an address to the function can be passed to any other external function,
or even called by FFI callout:

	myFunction := NBNativeFunctionGen cdecl: #(..) emit: [...].
	myFunction install.
	address := myFunction address.

After function is no longer needed, it must be uninstalled (to conserve the external memory):

	myFunction uninstall.

Note, that this must be done explicitly, since like everything which works with external resources, there's no any automatic resource management for external memory.
