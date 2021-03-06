menus behavior
moveInNewPackage

	"Present a choice of categories or prompt for a new category name and add it before the current selection, or at the end if no current selection"
	| item |
	self okToChange ifFalse: [^ self].

	item := self moveInNewPackage: (self selectedClasses collect: [:e | e theNonMetaClass ]).

	item ifNotNil: [ self selectedPackage: item ].
	self updateBothView