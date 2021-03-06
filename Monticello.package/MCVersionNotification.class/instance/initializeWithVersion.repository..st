initialize-release
initializeWithVersion: aVersion repository: aRepository
	version := aVersion.
	repository := aRepository.
	ancestor := repository closestAncestorVersionFor: version info ifNone: []. 
	changes := ancestor
				ifNil: [#()]
				ifNotNil: [(version snapshot patchRelativeToBase: ancestor snapshot) 							operations asSortedCollection]