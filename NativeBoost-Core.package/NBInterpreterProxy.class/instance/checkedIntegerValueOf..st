proxy functions
checkedIntegerValueOf: oop
	"convert smallinteger into integer value. fails if oop is not a smallinteger"
	
	^ self simpleCall
