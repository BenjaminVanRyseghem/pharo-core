announcements registration
registerToMethodAnnouncements
	
	SystemAnnouncer uniqueInstance weak
		on: MethodModified send: #methodModified: to: self;
		on: MethodRemoved send: #methodRemoved: to: self.