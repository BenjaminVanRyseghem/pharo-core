removing
removeMessageCategory
	"If a message category is selected, create a Confirmer so the user can 
	verify that the currently selected message category should be removed
 	from the system. If so, remove it."

	| messageCategoryName |
	messageCategoryListIndex = 0 ifTrue: [^ self].
	self okToChange ifFalse: [^ self].
	messageCategoryName := self selectedMessageCategoryName.
	(self messageList size = 0
		or: [self confirm: 'Are you sure you want to
remove this method category 
and all its methods?']) ifFalse: [^ self].
	self selectedClassOrMetaClass removeProtocol: messageCategoryName.
	self messageCategoryListIndex: 0.
	self changed: #messageCategoryList.