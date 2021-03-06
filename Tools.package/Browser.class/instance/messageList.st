message list
messageList
	"Answer an Array of the message selectors of the currently selected message category, provided that the messageCategoryListIndex is in proper range.  Otherwise, answer an empty Array  If messageCategoryListIndex is found to be larger than the number of categories (it happens!), it is reset to zero."
	| sel |
	(sel := self messageCategoryListSelection) ifNil: [
		^ self classOrMetaClassOrganizer
			ifNil: [Array new]
			ifNotNil: [self classOrMetaClassOrganizer allMethodSelectors]
	].

	^ (self classOrMetaClassOrganizer listAtCategoryNumber: messageCategoryListIndex)
				ifNil: [messageCategoryListIndex := 0.  Array new]