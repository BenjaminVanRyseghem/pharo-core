private
metaClassDefinition: string with: chgRec
	| tokens theClass |
	tokens := string parseLiterals.
	theClass := self getClass: (tokens at: 1).
	theClass metaClass definition: string.
	classOrder add: theClass metaClass.