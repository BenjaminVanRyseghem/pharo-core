testing
isSelectedIndex: index

	^ self isMultipleSelection
 		ifTrue: [ selectedIndexes at: index ifAbsent: [ ^false ]]
		ifFalse: [ self selectedIndex = index ]