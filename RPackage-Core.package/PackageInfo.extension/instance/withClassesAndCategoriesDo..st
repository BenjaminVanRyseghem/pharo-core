*RPackage-Core
withClassesAndCategoriesDo: aBlock
	self systemCategories do: [:aSymbol |
		(SystemOrganization listAtCategoryNamed: aSymbol asString) collect: [:e | self class environment at: e ] thenDo: [ :class |
			aBlock value: class value: aSymbol.
		].
	].