compatibility layer
selector
	"Answer the selector of the method that created the receiver."

	^self code selector ifNil: [self code defaultSelector].