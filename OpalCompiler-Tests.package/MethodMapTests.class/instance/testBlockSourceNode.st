testing - ast mapping
testBlockSourceNode
	self assert: (([ 1 + 2 ] sourceNode)  isKindOf: RBBlockNode).
