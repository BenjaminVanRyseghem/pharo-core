updating
update: aParameter

	aParameter == #getItems 					ifTrue: [ ^ self updateItems ].
	aParameter == #getListSize 				ifTrue: [ ^ self updateListSize ].
	aParameter == #getHeaderTitle 			ifTrue: [ ^ self updateHeaderTitle ].
	aParameter == #iconMaxSize 				ifTrue: [ ^ self updateIconMaxSize ].
	aParameter == #iconForItem:at: 			ifTrue: [ ^ self updateIconCache ].
	aParameter == #resetSelectedIndexes 	ifTrue: [ ^ self deselectAll ].
	aParameter == #allowToSelect			ifTrue: [ ^ self updateAllowToSelect ].
	aParameter == #invalidateIcons 			ifTrue: [ ^ self invalidateIconCache ].
				
	aParameter isArray ifFalse: [ ^ self ].
	aParameter size == 2 ifFalse: [ ^ self ].
	
	aParameter first = #deSelectOnReclick: ifTrue: [ self deSelectOnReclick: aParameter second ].
	aParameter first = #isMultipleSelection: ifTrue: [ self isMultipleSelection: aParameter second ].
	aParameter first = #unselectOnChange: ifTrue: [ self unselectOnChange: aParameter second ].
	aParameter first = #hasHeader: ifTrue: [ self hasHeader: aParameter second ].
	aParameter first = #setIndex: ifTrue: [ self setIndex: aParameter second ].