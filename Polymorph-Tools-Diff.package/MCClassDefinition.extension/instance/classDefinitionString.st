*Polymorph-Tools-Diff
classDefinitionString
	"Answer a string describing the class-side definition."
	
	^String streamContents: [:stream | self printClassDefinitionOn: stream]