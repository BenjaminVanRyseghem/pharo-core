accessing
fillWidth: anObject
	"Set the value of fillWidth"

	fillWidth := anObject.
	lineHighligths do: [:e | e fillWidth: anObject ]