I representing external structures to closely mimic 'struct' types in C.
A C structure has transparent access to its fields: that is, a structure is transparent if you know its fields and can modify them. This is in contrast of opaque structures, which you never manipulate directly but through functions.

For each struct type, you define a subclass of me, and implement the #fieldsDesc class method. 
The #fieldDesc method should answer an array containing enumeration of structure fields in form of type and name, much like in C syntax, for example:

fieldDesc
	^ #(
		int field1;
		float field2;
		void* field3;
	).

Once you define the structure fields and initialize the class, you can create the instances of it and access the fields by their name (the accessor methods are generated automatically).	
An external structure can be allocated in object memory, or in external memory, using #new, or #externalNew correspondingly.
To test if given instance is allocated on external heap you can use #isExternal method.

For passing (sub)instance of NBExternalStructure as argument to external function, the function argument type must be resolved to refer to corresponding class, e.g. if you defined class MyStructure, the external function signature must use it like 'void foo (MyStructure arg)', or if you want to preserve an original C function signature as much as close to original, use aliases for type (so type with name '_C_struct_type_name_whatever' should resolve to 'MyStructure' at the end).

You can use external structure for  passing by value (MyStruct param),
or passing by pointer (MyStruct* param) both, depending of what external function expecting.

In case if you want to pass a pointer to structure, but function signature does not explicitly uses a struct type (like 'void* someParam'),
you can use #address accessor and pass it as parameter to function,e.g.

someObject callExternalFunctionWith: mystruct address.

Using external structure as return type: if external function returns a struct type:
MyStruct foo() 
the marshaller creates an instance of MyStruct on object memory, then lets function modify its fields and aswers the resulting object. 

If function returns a pointer to structure, like 'MyStruct * foo()',
then marshaller will create an instance of MyStruct as return value,
and store an address returned by function as instance of NBExternalAddress in its data ivar (effectively making the structure instance external). 

Please be aware, that #free method can only be used if you allocated an external structure by yourself , using #externalNew , but not for instances which returned by external function or when given memory is controlled by external library or was allocated using other means.