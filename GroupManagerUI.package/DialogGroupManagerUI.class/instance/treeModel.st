tree
treeModel
	
	^ treeModel ifNil: [treeModel := self treeModelClass new model: self]