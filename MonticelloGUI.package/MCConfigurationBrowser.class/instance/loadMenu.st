actions
loadMenu

	| menu |
	menu := UIManager default newMenuIn: self for: self.
	menu add: 'update from image' action: #updateFromImage.
	menu add: 'update from repositories' action: #updateFromRepositories.
	menu popUpInWorld.
