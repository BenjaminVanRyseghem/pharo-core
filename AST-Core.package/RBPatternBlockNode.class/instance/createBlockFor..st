matching
createBlockFor: aRBBlockNode 

	self replacePatternNodesIn: aRBBlockNode.
	^Smalltalk compiler 
		source: aRBBlockNode formattedCode;
		receiver: self;
		evaluate