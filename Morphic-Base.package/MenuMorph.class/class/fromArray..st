instance creation
fromArray: anArray 
	"Construct a menu from anArray. See #addList comment"

	^ self new addList: anArray.
