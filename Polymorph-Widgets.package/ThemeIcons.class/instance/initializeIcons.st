initialization
initializeIcons
	icons := IdentityDictionary new.
	self iconSelectors do: [:each | 
		icons
			at: each
			put: (self perform: each) ]