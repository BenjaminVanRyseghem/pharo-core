*AST-Interpreter-Extension
asASTBlockClosure
	^ASTBlockClosure new
		homeContext: self home asASTInterpreterContext;
		code: self sourceNode.
