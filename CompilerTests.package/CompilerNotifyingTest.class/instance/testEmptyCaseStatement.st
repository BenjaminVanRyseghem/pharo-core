testing
testEmptyCaseStatement
	self setUpForErrorsIn: '^ nil caseOf: { ` At least one case required ->`} '.
	self enumerateAllSelections.