private
resort: newMode
	"Re-sort the list of files."

	| item |
	listIndex > 0
		ifTrue: [ item := (list at: listIndex) ].
		
	sortMode := newMode.
	
	self updateFileList.
	
	item ifNotNil: [
		reference := item.
		listIndex := list findFirst: [:i | i = item. ].
		self changed: #fileListIndex].

	listIndex = 0 
		ifTrue: [self changed: #contents].

	self updateButtonRow
