exceptions
on: exception do: handlerAction
	"Evaluate the receiver in the scope of an exception handler.
	"
	| handlerActive |
	"The following primitive is just a marker used to find the error handling context. 
	see MethodContext>>#isHandlerContext "
	<primitive: 199>  
	"...it will always fail and execute the following code"
	handlerActive := true.
	^ self value