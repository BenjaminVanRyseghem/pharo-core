private
setNumArgs: numArgs toMethod: theMethod
"All that line is to change the argument count of a CompiledMethod header. The argument count is 4 bits starting in the 24 and finishign in 27.
16r787FFFFF is the hexa representation of a number that is all 1 and only those 4 bits in 0. Hence, when doing (theMethod header bitAnd: 16r787FFFFF) what we do is just to put zeros in those 4 bits.

Now with the new argument size, we do bitShift: 24 and we obtain a 32 bits number with all zeros and just our 4 bits with the value we want.
Since in the previous step we cleaned those 4 bits doing now a bitOr: with the second step, we have the result.
"
	| xpc |
	
	theMethod 
		objectAt: 1 
		put: (((theMethod header 
			bitAnd: 2r01110000000000111111111111111111) 
			bitOr: (numArgs bitShift: 24))
			bitOr: (numArgs + 1 bitShift: 18)).
	
	xpc := theMethod initialPC.
	"long store temp"
	(theMethod at: xpc) = 129 
		ifTrue: [
			theMethod at: xpc + 1 put: (16r40 + numArgs).
			theMethod at: xpc + 3 put: (16r10 + numArgs)]