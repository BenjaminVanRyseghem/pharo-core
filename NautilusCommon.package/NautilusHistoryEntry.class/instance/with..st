private
with: aNautilus
	
	self 
		selectedPackage: aNautilus selectedPackage;
		selectedCategory: aNautilus selectedCategory.
		aNautilus selectedMethod
			ifNil: [ self selectedMethod: nil ]
			ifNotNil: [:met | self selectedMethod: met selector].
	self
		selectedClass: aNautilus selectedClass;
		selectedGroup: aNautilus selectedGroup;
		showPackages: aNautilus showPackages;
		showGroups: aNautilus showGroups;
		showHierarchy: aNautilus showHierarchy;
		showComment: aNautilus showComment;
		showInstance: aNautilus showInstance;
		showCategories: aNautilus showCategories.