testing
hasChanges

	self sourceCode isEmpty ifFalse:[^true].
	self organization hasComment ifTrue:[^true].
	definition isNil ifFalse:[^true].
	metaClass isNil ifFalse:[^metaClass hasChanges].
	^false