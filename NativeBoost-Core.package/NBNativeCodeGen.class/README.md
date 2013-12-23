I providing a basic interface for use a dynamically generated native code with NativeBoost plugin using #primitiveNativeCall.
On my class side, you can find the interface to help managing native code, as well as basic functionality for dealing with it at run time. 

My instance serves as a helper to access common facilities used for code generation: 
 - assembler
 - interpreter proxy

i do not provide anything beyond that, so you still basically on you own, and must use assembler and interpreter proxy for implementing a low-level funcitonality
in your code (like new primitive, new function etc)

Instance Variables:
	asm							: An object that is used to generate native code
	proxy	<NBInterpreterProxy> : An object providing an access to public VM interface: like fetching a var from smalltalk stack, accessing object's internals, etc.
	options	<Collection>   : A set of options which generated code may use 
	method 	: a compiled method instance where native code will be installed to, (of course in case if my instance used for generating code to be installed there,
		and if not, it can be ignored)
		
Usage:

My most simple use is in a form: 

myMethod
 <primitive: #pritmiveNativeCall module: #NativeBoostPlugin>
  ^ NBNativeCodeGen methodAssembly: [:gen |
	 "here you put an instructions or provide own machine code.
	a block should answer a bytearray, which should contain ready for use machine code"
	]

In case, if you want to use different top-level interface, like in order to write something like following:

myMethod
 <primitive: #pritmiveNativeCall module: #NativeBoostPlugin>
  ^ self myCode: [
	 "here you put an instructions or provide own machine code"
	]

You can use #handleFailureIn:nativeCode: method , which takes care of handling primitive failure, dealing with errors and 
finally installing native code, which you providing, into corresponding method.

