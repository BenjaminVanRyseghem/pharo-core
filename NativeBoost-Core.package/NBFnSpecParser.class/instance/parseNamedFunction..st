public interface
parseNamedFunction: aFunctionDefinition

"
Parse a function definition in a form of: 

#( returnType functionName (arguments) )
or

'returnType functionName (arguments)'


Answer an instance of NBFnSpec class
"
	| argsSpec typeAndName fnName |
	
	fnSpec := NBFnSpec new.
	
	aFunctionDefinition isString ifTrue: [

		typeAndName :=  (aFunctionDefinition copyUpTo: $( ) trimBoth.
		argsSpec := ((aFunctionDefinition copyAfter: $( ) copyUpTo: $)) trimBoth.
	
	] ifFalse: [

		argsSpec := aFunctionDefinition last gather: [:ea | ea asString, ' ' ].
		typeAndName := aFunctionDefinition allButLast  gather: [:ea | ea asString, ' ' ].
	].
	
	stream := typeAndName readStream.
	fnSpec returnType: (requestor returnType: self parseType).
	
	fnName := self parseWord.
	fnName ifNil: [ self error: 'function name expected' ].

	fnSpec functionName: fnName.
	
	stream := argsSpec readStream.
	self parseArguments.

	^ fnSpec