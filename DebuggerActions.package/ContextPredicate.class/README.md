I encapsulate a condition that can be verified against a MethodContext.

Usage: users should send me the mesage message matches: with the context
that should be verified as a parameter.

To add concrete conditions a subclass should be create that implements the method matchContext:

Instance Variables
result:		the last value returned by matches:

