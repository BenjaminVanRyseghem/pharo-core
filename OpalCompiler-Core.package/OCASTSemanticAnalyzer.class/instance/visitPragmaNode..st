visitor
visitPragmaNode: aPragmaNode
	super visitPragmaNode: aPragmaNode.
	aPragmaNode isCompilerOption
		ifTrue: [ aPragmaNode asPragma sendTo: aPragmaNode methodNode compilationContext ].