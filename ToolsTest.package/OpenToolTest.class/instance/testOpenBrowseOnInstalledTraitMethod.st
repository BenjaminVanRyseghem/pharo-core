test browse
testOpenBrowseOnInstalledTraitMethod
	| browser |
	browser := (Class>>#localSelectors) browse.
	browser changed.
	browser close.