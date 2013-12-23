I am an abstract class that primarily serves for generating a machine code which converting arguments and return types
between Smalltalk and C worlds. 

My subclasses implementing a marshalling for concrete type, which is then used by FFI. 

Instance Variables:
	pointerArity	<Integer>
	
	loader	<NBVariableLoader>: an instance of argument loader, which emits code to load the smalltalk argument into register.	
		When generating the marshalling code to push a variable, my instances need this helper which, depending on where the object is (inst var, method arg, etc) gets the object in question into a register.