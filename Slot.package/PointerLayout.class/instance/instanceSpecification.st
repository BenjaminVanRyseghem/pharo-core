format
instanceSpecification
	| base |
	base := self instanceSpecificationBase.
	^ self hasFields
		ifTrue: [ base + 1 ]
		ifFalse: [ base ]