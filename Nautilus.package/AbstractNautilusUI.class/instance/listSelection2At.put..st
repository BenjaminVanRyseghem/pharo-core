list selections
listSelection2At: anIndex put: aBoolean

	| elt |
	aBoolean ifNil: [ ^ self ].
	elt := self getList2 at: anIndex ifAbsent: [ ^ self ].
	self listSelection2 at: elt put: aBoolean.
	self changed: #hasSelectedSelections