test shadowing
testReservedNameAsBlockArgumentShadowing
	interactive := true.
	#( 'self' 'super' 'thisContext' 'true' 'false' 'nil' ) do: [ :each |
		self initializeErrorMessage.
		[ :exit | 
			Compiler new 
				compile: 'temp ^ [ :' , each , ' | ^ ' , each , ' ]'
				in: MockForCompilation
				classified: nil
				notifying: self
				ifFail: [ exit value ].
			self fail ] valueWithExit.
		self assert: errorMessage = 'Name is already defined ->'.
		self assert: errorLocation = 11 ]