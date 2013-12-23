image, changes names
fileForChangesNamed: aString

	^(self imageDirectory resolve: aString), self changesSuffix