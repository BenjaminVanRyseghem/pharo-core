updating
breakDependents

	self flag: #GSoC. "Flag added by Benjamin Van Ryseghem the July 22, 2013 to remember to remove this line in a while"
	[ super breakDependents ]
		on: Error
		do: [].
	
	self removeProperty: #announcer