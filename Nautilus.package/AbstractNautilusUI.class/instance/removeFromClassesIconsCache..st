icon caches
removeFromClassesIconsCache: aClass
	" not used since the class's icons are always the same "
	
	ClassesIconsCache removeKey: aClass ifAbsent: [].
	self updateClassView.