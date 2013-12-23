accessing
parserClass
	^ parserClass ifNil: [ parserClass := RBExplicitVariableParser ]