list selections
listSelectionAt: anIndex put: aBoolean

	| elt |
	elt := self getList at: anIndex ifAbsent: [ ^ self ].
	self listSelection at: elt put: aBoolean.
	self changed: #hasSelectedSelections