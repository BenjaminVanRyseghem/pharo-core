instance variables
instVarNames
	"Answer an Array of the receiver's instance variable names."

	self instanceVariables == nil
		ifTrue: [^#()]
		ifFalse: [^self instanceVariables]