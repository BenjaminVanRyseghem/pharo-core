events handling
doubleClickOnGroup

	self selectedGroup 
		ifNil: [ ^self ]
		ifNotNil:[:group | self model class openOnGroup: group ]