private
loadList
	
	^ self 
		ifGroups: [ self getGroupsKeyList ]
		ifNot:[ self getPackagesWithoutExtensionsList ]