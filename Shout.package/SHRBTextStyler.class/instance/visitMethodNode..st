visiting rb nodes
visitMethodNode: aMethodNode 
aMethodNode comments do: [ :comment|
		self 
			addStyle: #comment
			from: comment first
			to: comment last ].
	aMethodNode arguments do: [ :argument|
		self 
			addStyle: #patternArg
			forNode: argument ].
		
	aMethodNode selectorParts do: [ :selectorPart|
		self 
			addStyle: #patternKeyword
			forNode: selectorPart ].
	
	aMethodNode pragmas
		do: [ :each | self visitNode: each ].
		
	self visitNode: aMethodNode body