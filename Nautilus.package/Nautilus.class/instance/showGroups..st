accessing
showGroups: aBoolean

	showGroups := aBoolean.
	self announcer announce: ( NautilusShowGroupsChanged boolean: aBoolean )