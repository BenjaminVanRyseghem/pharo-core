menus
menu: aMenu shifted: aBoolean 
	
	self showGroups
			ifTrue: [self groupsMenu: aMenu shifted: aBoolean]
			ifFalse: [self packagesMenu: aMenu shifted: aBoolean].
	^ aMenu