testing
testAllClassesDefiningClassVarNamed
	"self debug: #testAllClassesDefiningClassVarNamed"
	
	| res |
	res := SystemNavigation new allClassesDefiningClassVarNamed: 'AsciiOrder'.
	self assert: (res includes: String)