monticello menus behavior
newRepository
	| types index |
	types := MCRepository allConcreteSubclasses asArray.
	index := UIManager default chooseFrom: (types collect: [:ea | ea description])
				title: 'Repository type:'.
	^ index = 0 ifFalse: [(types at: index) morphicConfigure]