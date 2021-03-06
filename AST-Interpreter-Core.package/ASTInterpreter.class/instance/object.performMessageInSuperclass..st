reflective
object: receiver performMessageInSuperclass: aMessage	
	"Check if the message to perform is valid and if so, execute it"
	
	| selector arguments lookupClass message|
	
	selector := aMessage arguments first.
	arguments := aMessage arguments second.
	lookupClass := aMessage arguments third.

	selector isSymbol
		ifFalse: [^self reflectiveFailedToken].
	selector numArgs = arguments size
		ifFalse: [^self reflectiveFailedToken].
	(receiver isKindOf: lookupClass)
		ifFalse: [^self reflectiveFailedToken].	
			
	message := Message selector: selector arguments: arguments.

	^self send: message to: receiver class: lookupClass
	