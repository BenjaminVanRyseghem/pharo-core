proxy objects
specialObjectsArray
	" load the special objects array into EAX"
	
	"since we cannot directly access the specialObjectsArray we store it as an extra Root"
	NativeBoost extraRootsRegistry
		at: #specialObjectsArray ifAbsentPut: [ Smalltalk specialObjectsArray ];
		"specialObjectsArray -> EAX"
		emitOopAt: #specialObjectsArray generator: gen.