parsing-private
makeIntegerOrScaledInteger
	"at this point, there is no digit, nor fractionPart.
	maybe it can be a scaled decimal with fraction omitted..."
	
	neg
		ifTrue: [integerPart := integerPart negated].
	self readExponent
		ifTrue: [^integerPart * (base raisedToInteger: exponent)].
	(self readScaleWithDefaultNumberOfDigits: 0)
		ifTrue: [^integerPart asScaledDecimal: scale].
	^ integerPart