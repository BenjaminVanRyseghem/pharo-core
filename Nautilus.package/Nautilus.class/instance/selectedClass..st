accessing
selectedClass: aClass

	selectedClass := aClass.
	self selectedCategory: nil.
	aClass ifNotNil: [ self recentClasses add: aClass theNonMetaClass name ].
	self announcer announce: ( NautilusClassSelected class: aClass )