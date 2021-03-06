instance variables
instVarIndexFor: instVarName
	"Answer the index of the named instance variable."

	| index |
	index := self instanceVariables == nil 
		ifTrue: [0]
		ifFalse: [self instanceVariables indexOf: instVarName].
	index = 0 ifTrue: 
		[^self superclass == nil 
			ifTrue: [0]
			ifFalse: [self superclass instVarIndexFor: instVarName]].
	^self superclass == nil 	
		ifTrue: [index]
		ifFalse: [index + self superclass instSize]