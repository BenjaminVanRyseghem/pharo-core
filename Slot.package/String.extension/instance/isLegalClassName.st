*Slot
isLegalClassName
	"Answer whether aString is a legal  class name."

	^ [Smalltalk classBuilder validateClassName: self asSymbol] on: Error do: [^ false] 