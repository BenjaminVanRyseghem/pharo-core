*AST-Interpreter-Extension
asASTInterpreterContext
	^ (self isBlockContext 
		ifTrue: [ AIBlockContext ]
		ifFalse: [ AIMethodContext ]) fromVMContext: self 