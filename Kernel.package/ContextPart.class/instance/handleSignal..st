private-exceptions
handleSignal: exception
	"Sent to handler (on:do:) contexts only.  If my exception class (first arg) handles exception then execute my handle block (second arg), otherwise forward this message to the next handler context.  If none left, execute exception's defaultAction (see nil>>handleSignal:)."

	| value |
	((self exceptionClass handles: exception)
	and: [self exceptionHandlerIsActive]) 
		ifFalse: [ ^ self nextHandlerContext handleSignal: exception ].

	exception privHandlerContext: self contextTag.
	"disable self while executing handle block"
	self exceptionHandlerIsActive: false. 
	value := [ self exceptionHandlerBlock cull: exception ]
		ensure: [ self exceptionHandlerIsActive: true ].
	"return from self if not otherwise directed in handle block"
	self return: value.  
