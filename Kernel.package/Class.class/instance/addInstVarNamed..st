instance variables
addInstVarNamed: aString
	"Add the argument, aString, as one of the receiver's instance variables."
	^self classBuilder
		name: self name
		inEnvironment: self environment
		subclassOf: self superclass
		type: self typeOfClass
		instanceVariableNames: self instanceVariablesString, ' ', aString
		classVariableNames: self classVariablesString
		poolDictionaries: self sharedPoolsString
		category: self category