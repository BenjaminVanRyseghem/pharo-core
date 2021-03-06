commands
evaluate: aStream
	| result exceptionClassToUse |
	
	"workaround to make old Compiler unloadable"
	exceptionClassToUse := (Smalltalk compilerClass == OpalCompiler) 
		ifTrue: [OCSemanticWarning]
		ifFalse: [Smalltalk globals at: #ParserNotification].
	
	[ 
		result := Smalltalk evaluate: aStream.
		self hasSessionChanged
			ifFalse: [ self stdout print: result; lf ]
	] on: Error, ParserNotification do: [ :error |
		self handleError: error ].