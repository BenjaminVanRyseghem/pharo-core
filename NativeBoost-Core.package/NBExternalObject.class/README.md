I representing an external object of one kind, provided by some external library/function.

My instance holds a handle, which is used to identify the external object when i am passed as an argument, or when i'm used as a return type in function signature.
A typical usage of me is to create a subclass, and then use that subclass name directly in function signatures:

NBExternalObject subclass: #MyExternalObject

newObj := MyExternalObject newObject.

MyExternalObject class>>newObject
  <primitive: #primitiveNativeCall ...>
 ^ self nbCall: #(MyExternalObject someExternalFunction() )

here, assume that someExternalFunction() returns some handle (or pointer) to some opaque external structure. By putting NBExternalObject subclass (MyExternalObject) as a return type
into the function signature, we are telling the code generator to automatically convert the return value into an instance of a given class and initialize its handle to the value returned by the function.

When used as argument type, the value, which is used to pass to the external function is value held in my handle instance variable:

MyExternalObject>>compareWith: anotherExternalObject
  <primitive: #primitiveNativeCall ...>
   ^ self nbCall: #( void compare ( self , MyExternalObject anotherExternalObject))

The main advantage of using NBExternalObject subclass as a type name for arguments is that it provides type safety by checking the incoming argument, that it
is an instance of your class, and nothing else. If not, the primitive will fail without calling the external function.
