storing
prepareVersionForStorage: aVersion
	^ self alwaysStoreDiffs
		ifTrue: [
			aVersion asDiffAgainst:
				(self closestAncestorVersionFor: aVersion info ifNone: [^ aVersion])]
		ifFalse: [ aVersion ]