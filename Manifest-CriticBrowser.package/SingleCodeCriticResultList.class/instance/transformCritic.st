menu
transformCritic
	
	criticsModel selectedItems ifNotNil: [ :items |
		items do: [:critic | rule transform: critic ]  displayingProgress: [:critic|]]