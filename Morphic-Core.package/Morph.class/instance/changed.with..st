updating
changed: anAspect with: anObject

	self flag: #GSoC. "Flag added by Benjamin Van Ryseghem the July 22, 2013 to remember to remove this line in a while"
	[ super changed: anAspect ]
		on: Exception
		do: [].
	
	self announcer announce: (MorphChangedWithArguments new
		morph: self;
		selector: anAspect;
		arguments: anObject)