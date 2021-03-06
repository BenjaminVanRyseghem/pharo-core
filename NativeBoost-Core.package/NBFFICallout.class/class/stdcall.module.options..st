generator entry points
stdcall: functionSpec module: aModuleName options: anOptions

	"Note, this is a special method, which should be sent only from 
	methods, which intend to use FFI callout code.
	All such methods should use a 'primitiveNativeCall' primitive.

	First argument is a function specification denoting return value type, name and
	arguments.

	" 
	| sender |
	sender := thisContext sender.
	^ self 
		handleFailureIn: sender
		nativeCode: [ :gen |
			gen
				sender: sender;
				parseOptions: anOptions;
				stdcall;
				generateCall: functionSpec module: aModuleName ]
