adding/removing
removeRejectClass: aClass

	|  classes |
	classes :=  manifestClass rejectClasses asOrderedCollection.
	classes := classes reject: [ :each | 
			((Smalltalk globals at: each first first) manifestReadOn:  (each first at: 2)) =  aClass asRingDefinition ].	
	self compileSelector: (self class rejectClassesTag) returnValue:  (self buildArrayString: classes)
	