private
removeAGroup

	| group |
	group := self groupManager groups removeAGroup: self selectedGroup.
	tree updateList.
	treeModel selection: nil.
	treeModel changed: #selection.