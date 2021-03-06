*System-Support
referencedClasses
	"Return the set of classes that are directly referenced by my methods"

	| answer |
	answer := Set new.
	self methods do: [ :cm |
		answer addAll: 
			( cm literals select: [ :l | l isKindOf: Association ] thenCollect: #value ) ].
		
	^ answer