factory
createMethodNamed: aSymbol parent: aRGBehaviorDefinition
	"Create a method whose selector is aSymbol whose class is a ClassDefinition. 
	Other creation methods may use instead a Smalltalk class."
	
	^(self createMethodNamed: aSymbol) parent: aRGBehaviorDefinition