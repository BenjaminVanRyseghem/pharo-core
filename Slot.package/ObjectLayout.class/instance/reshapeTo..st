reshaping
reshapeTo: aModification
	^ self class 
		extending: aModification layout
		scope: LayoutEmptyScope instance
		host: self host