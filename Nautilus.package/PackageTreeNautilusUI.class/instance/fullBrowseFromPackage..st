private dispatch
fullBrowseFromPackage: aPackage 
	
	self model class 
		openOnPackage: aPackage
		class: self selectedClass
		category: self selectedCategory
		method: self selectedMethod
		group: self selectedGroup
		showGroups: self showGroups
		showHierarchy: self showHierarchy
		showPackages: self showPackages
		showComment: self showComment 
		showInstance: self showInstance 
		showCategories: true
