accessing
showPackages: aBoolean

	showPackages := aBoolean.
	self announcer announce: ( NautilusShowPackagesChanged boolean: aBoolean )