creating
newSubclassOf: aClass uses: aTraitComposition instanceVariableNames: ivNamesString classVariableNames:  classVarsString category: category
	| newClass |
	newClass := aClass 
		subclass: self newClassName 
		uses: aTraitComposition
		instanceVariableNames: ivNamesString 
		classVariableNames: classVarsString 
		poolDictionaries: '' 
		category: (self packageName, '-', category) asSymbol.
	self createdClasses add: newClass.
	^newClass