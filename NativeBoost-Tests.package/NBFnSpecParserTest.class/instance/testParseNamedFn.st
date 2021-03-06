tests
testParseNamedFn

	 | parser args |
	
	#(
	(int * * #'function_n$a$m$e' ( 0, nil, -10, FOO_BAR , int a, int* _b, char** c, void* * * d_))
	' int * * function_n$a$m$e (0, nil, -10, FOO_BAR , int a, int* _b, char** c, void* * * d_    ' ) do: [:spec |

		parser := self newParser parseNamedFunction: spec.
		
		self assert: parser functionName = 'function_n$a$m$e'.
		self assert: parser returnType = #('int' 2).
		
		args := parser arguments.
		self assert: args size = 8.

		self assert: (args at: 1) = 0. 
		self assert: (args at: 2) = #(nil nil 'nil' 0). 
		self assert: (args at: 3) = -10. 
		self assert: (args at: 4) = #(nil nil 'FOO_BAR' 0). 
		self assert: (args at: 5) = #('a' nil 'int' 0). 
		self assert: (args at: 6) = #('_b' nil 'int' 1). 
		self assert: (args at: 7) = #('c' nil 'char' 2). 
		self assert: (args at: 8) = #('d_' nil 'void' 3 ). 
	].
