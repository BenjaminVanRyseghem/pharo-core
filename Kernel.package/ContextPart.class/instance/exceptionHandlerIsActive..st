special context access
exceptionHandlerIsActive: aBoolean
	"handlercontext only. access temporaries from BlockClosure>>#on:do:"
	self tempAt: 3 put: aBoolean
