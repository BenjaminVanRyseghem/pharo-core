system compatibility
extensionCategoriesForClass: aClass
	self flag: #stef. "only used by goferCleanUp and PackageEnvironment of RB"
	^ aClass organization realCategories select: [:cat | self isYourClassExtension: cat]