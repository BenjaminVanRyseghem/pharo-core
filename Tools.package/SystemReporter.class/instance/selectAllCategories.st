accessing-categories
selectAllCategories
	categoriesSelected addAll: categoryList.
	self changed: #categorySelected.
	self updateReport