nodes
testFindBestNodeForInstanceVariableItsRBVariable
	| node |

	node :=SugsMenuBuilder findBestNodeFor:  SugsMockContext instVarContext .
	self assert: node class equals: RBVariableNode.
	self assert:( node binding isInstance).