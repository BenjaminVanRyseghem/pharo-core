instance creation
buildHierarchyForClasses: aCollection fromPackage: aPackage
	^ self new
		setHierarchy: (self sortNodes: (aCollection collect: [:cl | SortHierarchicallyNode on: cl ]));
		yourself