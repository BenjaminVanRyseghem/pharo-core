initialization
registerToAnnouncements

	SystemAnnouncer uniqueInstance unsubscribe: self.
	
	SystemAnnouncer uniqueInstance weak
		"Class"
		on: ClassAdded send: #aClassHasBeenAdded: to: self;
		on: ClassCommented send: #aClassHasBeenCommented: to: self;
		on: ClassModifiedClassDefinition send: #aClassHasBeenModified: to: self;
		on: ClassRecategorized send: #aClassHasBeenRecategorized: to: self;
		on: ClassRemoved send: #aClassHasBeenRemoved: to: self;
		on: ClassRenamed send: #aClassHasBeenRenamed: to: self;
		on: ClassReorganized send: #aClassHasBeenReorganized: to: self;
		"Method"
		on: MethodAdded send: #aMethodHasBeenAdded: to: self;
		on: MethodModified send: #aMethodHasBeenModified: to: self;
		on: MethodRecategorized send: #aMethodHasBeenRecategorized: to: self;
		on: MethodRemoved send: #aMethodHasBeenRemoved: to: self