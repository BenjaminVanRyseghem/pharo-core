tree
setSelectedNodeItem: anItem

	| node |
	node :=  tree listManager nodeMorphsWithAllNodeItems: { anItem }.
	tree listManager selectedItems: node.
	^ node