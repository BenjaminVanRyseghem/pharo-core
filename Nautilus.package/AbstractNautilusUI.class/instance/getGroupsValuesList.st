private
getGroupsValuesList

	^ self selectedGroup 
		ifNil: [{}]
		ifNotNil: [:group | group classes ]