visiting
visitSequenceNode: aSequenceNode 
	self formatTemporariesFor: aSequenceNode.
	self formatSequenceCommentsFor: aSequenceNode.
	self formatSequenceNodeStatementsFor: aSequenceNode