menus behavior
removeGroups

	self okToChange ifFalse: [ ^ self ].
	self selectedGroups
		ifNotEmpty:[:groups |
			groupsSelection removeAll.
			groups do: [:group | self groupsManager removeAGroupSilently: group ].
			self selectedGroup: nil].
		