*System-Support
allCallsOn
	"Answer a SortedCollection of all the methods that refer to me by name or as part of an association in a global dict."
	
	^ (self allCallsOnIn: self systemNavigation)