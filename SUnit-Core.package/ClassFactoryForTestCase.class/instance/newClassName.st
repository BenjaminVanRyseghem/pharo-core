creating
newClassName
	| postFix |
	postFix := (self createdClasses size + 1) printString.
	^(#ClassForTestToBeDeleted, postFix) asSymbol