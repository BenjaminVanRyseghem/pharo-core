visitor
visitInlinedBlockNode: aBlockNode
	scope := scope newOptimizedBlockScope: blockcounter.
	aBlockNode isInlinedLoop ifTrue: [scope markInlinedLoop]. 
	aBlockNode scope: scope. scope node: aBlockNode.
	aBlockNode arguments do: [:node | (self declareVariableNode: node ) markArg.].
	self visitNode: aBlockNode body.
	scope := scope popScope.