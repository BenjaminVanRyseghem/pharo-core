accessing-classes
allClassesAndTraits
	" compatibility method with SystemDictionary "
	
	| classesAndTraits |
	classesAndTraits := IdentitySet new: 4096.
	self classesAndTraitsDo: [ :each | 
		classesAndTraits add: each theNonMetaClass ].
	^ classesAndTraits asArray