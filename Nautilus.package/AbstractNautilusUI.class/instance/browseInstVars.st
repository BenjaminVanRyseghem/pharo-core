private
browseInstVars

	| cls |
	cls := self selectedClass.
	(cls notNil and: [cls isTrait not])
		ifTrue: [ 
			self systemNavigation browseInstVarRefs: cls ].
	self changed: #isAClassSelected