tests
testIndirectArgumentObjectBoundsFailure
	| array |
	array := Object new.
	self
		should: [ self returnOop2Of: array ]
		raise: NBFFICalloutError
		withExceptionDo: [ :anEx | self assert: anEx messageText = self boundsError ].
	self
		should: [ self returnOop5Of: array ]
		raise: NBFFICalloutError
		withExceptionDo: [ :anEx | self assert: anEx messageText = self boundsError ]