menu
addCriticToFalsePositive
	
	criticsModel selectedItems
		ifNotNil: [ :items | items do: [ :item |
			cache addFalsePositive: item forRule: rule ]].
	
	