private-exceptions
findNextHandlerContextStarting
	"Return the next handler marked context, returning nil if there is none.  Search starts with self and proceeds up to nil."

	| context |
	<primitive: 197>
	context := self.
	[
		context isHandlerContext 
			ifTrue: [ ^ context ].
		(context := context sender) == nil
	] whileFalse.
	^ nil