testing - exceptions
testEnsureNonLocalReturn
	"does not work"
	"self assert: false."
	self assert: (self interpret: '
		|x aCol|
		aCol := OrderedCollection new.
		x := ASTInterpreterTest new setUp ensureNonLocalReturn: aCol.
		x + aCol first
	') equals: 7
	
	