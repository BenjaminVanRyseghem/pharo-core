private
getClassHierarchy2

	^ self selectedPackage
		ifNil: [{}]
		ifNotNil:[:package |
			cachedHierarchy := self buildPackageHierarchyFor: package.
			cachedHierarchy sortedElements]