accessing
borderColor: anObject
	"Set the value of borderColor"

	borderColor := anObject.
	lineHighligths do: [:e | e borderColor: anObject ]