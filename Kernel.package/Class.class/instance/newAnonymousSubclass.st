subclass creation
newAnonymousSubclass
	^  AnonymousClassInstaller make: [ :builder | builder superclass: self ].