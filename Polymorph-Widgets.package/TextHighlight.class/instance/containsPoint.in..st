testing
containsPoint: aPoint in: rect
	"Answer whther the bounds contain the given (local coordinate) point."

	^ lineHighligths anySatisfy: [:e | e containsPoint: aPoint in: rect ]