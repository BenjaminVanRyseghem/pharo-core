menu
classMenu: aMenu shifted: shifted
	"Fill aMenu with items appropriate for the class list"

	self selectedClass ifNil: [ ^ nil ].
	aMenu title: 'Class list'.
	aMenu addAllFromPragma: 'changeSorterClassListMenu' target: self.
	^aMenu