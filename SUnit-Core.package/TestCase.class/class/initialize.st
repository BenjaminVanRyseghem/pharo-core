initialize - event
initialize
     super initialize.
	SystemAnnouncer uniqueInstance 
		unsubscribe: self;
		on: MethodAdded, MethodModified, MethodRemoved 
			send: #methodChanged: 
			to: self.