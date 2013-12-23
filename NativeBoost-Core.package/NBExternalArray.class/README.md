I am abstract class which provides a convenient interface to work with arrays which elements are values of some external (C) type.
In order to use me with concrete element type, you must create a subclass of me and initialize element type properly.

Subclassing using public subclass:
 - if you want to create a public subclass of me, then you should make sure that in class-side #initialize method,
you add self-send #initElementType:  and specify the element type name to use. (And of course, initialize the class before attempting to create any instances).

Subclassing with anonymous subclass:
To create an anonymous subclass of me,  use #ofType: protocol, i.e.:

floatArrayClass := NBExternalArray ofType: 'float'.

Please note that separate #at: / #at:put: methods will be automatically added in each and every subclass. 
Never remove them, despite they looking identical to superclass methods!
!!CAUTION!! Currently those methods do not perform any range checking for index. So, please make sure you using sane index values (1<= index <= size). 

Also, note, that class instance variables: elementType and elementSize, once initialized, is considered read-only. 
Changing them, once you created at least a single instance of your class may lead to funny consequences.

Arrays in external memory vs object memory:

My instances can work either with data held in object memory or in external memory. The difference is only at instantiation time: 

To create a new array in object memory, just use #new: protocol: 

	myArray := floatArrayClass new:  10.   "create a new array with 10 floats".

To allocate a new array in external memory, use #externalNew: protocol:   

	myArray := floatArrayClass externalNew:  10.  
	..
	myArray free.  "and sure thing, do not forget to free external memory after use".

To check whether array uses object memory or external memory , use #isExternal protocol.

Also, you can convert any external address into NBExternalArray subclass instance, i.e. suppose some external function returns a pointer (instance of NBExternalAddress):

	pointer := self callSomeFunc: 1. 
	
So, in order to access memory at given address as array of 100 elements of type 'int', you can use following: 

	myArray := (NBExternalArray ofType: 'int') onAddress: pointer size: 100.
	myArray at: 1.  "read first element"
	myArray at: 2 put: 50.  "write second element" 
	myArray do: [:each | ...  ] ... etc
			 
(sure thing, in the above example, the "NBExternalArray ofType: 'int' " expression is just to demonstrate the intent. It should be replaced with some variable, which you initialize only once and use many times, because creating an anonymous subclass each time would be highly ineffective )

Supported protocols: 
  	Since NBExternalTypeArray inherits from ArrayedCollection, you're free to use any protocols defined there as well as in its superclasses.
	There's only few additions comparing to ArrayedCollection, like #isExternal and #free .

Copying:
	a #copy behavior is special for external arrays: A copy will always use object memory, even if original used external memory.
