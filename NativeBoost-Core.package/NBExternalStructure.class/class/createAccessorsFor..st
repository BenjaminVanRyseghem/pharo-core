managing accessors
createAccessorsFor: fieldName 
	"Define read/write accessors for the given field"
	| code |

	code := fieldName,'
	"This method was automatically generated"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self fieldAt: ' , fieldName printString.
	Author useAuthor: 'NativeBoost' during: [ 
		self compileSilently: code classified: NativeBoost automaticallyGeneratedCodeCategory ].
	
	code := fieldName,': anObject
	"This method was automatically generated"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self fieldAt: ' , fieldName printString , ' put: anObject'.
	Author useAuthor: 'NativeBoost' during: [ 
		self compileSilently: code classified: NativeBoost automaticallyGeneratedCodeCategory ].
