accessing
color: anObject
	"Set the value of color"

	color := anObject.
	lineHighligths do: [:e | e color: anObject ]