*MonticelloGUI
asClassDefinition
	^ MCClassDefinition
		name: self name
		superclassName: self superclass name
		category: self category 
		instVarNames: self instVarNames
		classVarNames: self classVarNames asSortedCollection
		poolDictionaryNames: self sharedPoolNames
		classInstVarNames: self class instVarNames
		type: self typeOfClass
		comment: self organization classComment	 asString
		commentStamp: self organization commentStamp	