tests
testParserCallbacks

	| parser  spec parsedSpec args | 
	parser := self newParser requestor: self.
	
	spec := #(int * * function_name ( 0, nil, -10, FOO_BAR , int a, int* _b, char** c, void* * * d_)).
	parsedSpec := parser parseNamedFunction: spec.
	
	self assert: parsedSpec returnType equals: #returnType.
	
	args := parsedSpec arguments.
	
	self assert: args first = #integerConstant.
	self assert: args third = #integerConstant.
	args := args reject: [:each | each = #integerConstant ].

	self assert: args size = 6.
	self assert: args asSet size = 1.
	self assert: args first = #argument