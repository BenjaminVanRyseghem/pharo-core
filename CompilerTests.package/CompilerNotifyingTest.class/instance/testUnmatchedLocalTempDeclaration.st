testing
testUnmatchedLocalTempDeclaration
	self setUpForErrorsIn: '| x y ` Vertical bar expected ->`'.
	self enumerateAllSelections.