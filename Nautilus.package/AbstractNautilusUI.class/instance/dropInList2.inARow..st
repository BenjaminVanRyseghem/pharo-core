drag and drop
dropInList2: aCollection inARow: aRow
	| receiver |

	receiver := self getList2 at: aRow.
	
	self showInstance not
		ifTrue: [ receiver := receiver theMetaClass ]
		ifFalse: [ receiver := receiver theNonMetaClass ].
	
	self dropInAClass: aCollection into: receiver