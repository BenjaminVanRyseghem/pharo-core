list selections
listSelectionAt: anIndex

	| elt |
	elt := self getList at: anIndex ifAbsent: [ ^ false ].
	^ (self listSelection at: elt ifAbsent: [ false ]) == true