tree
originalIndex: aMethodeReference
	"must respect the original order because the dictionary is automaticaly sorted"

	| tempList |
	tempList := self originalList.
	
	1 to: (tempList size) do:[:i |
			(tempList at: i) == aMethodeReference
				ifTrue: [^i]].
	self error: 'Index not found'.
	^0