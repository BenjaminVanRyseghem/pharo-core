proxy functions
fetchInteger: index ofObject: oop
	"Fetch the instance variable at the given index of the given object. Return the C integer value of that instance variable, or fail if it is not an integer."

	^ self simpleCall