metaclass
metaClassIndicated: trueOrFalse 
	"Indicate whether browsing instance or class messages."

	metaClassIndicated := trueOrFalse.
	self setClassOrganizer.
	systemCategoryListIndex > 0 ifTrue:
		[self editSelection: (classListIndex = 0
			ifTrue: [metaClassIndicated
				ifTrue: [#none]
				ifFalse: [#newClass]]
			ifFalse: [#editClass])].
	messageCategoryListIndex := 0.
	messageListIndex := 0.
	contents := nil.
	self changed: #classSelectionChanged.
	self changed: #messageCategoryList.
	self changed: #messageList.
	self changed: #contents.
	self changed: #annotation.
	self decorateButtons
