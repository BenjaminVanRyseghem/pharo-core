ci
doneApplyingChangesSilentlyComment: providedComment preLoad: preload postLoad: postLoad
	| comment commentQuoted st |
	Smalltalk image saveSession.
	self saveAsNewImageWithCurrentReleaseNameToPublish.
	comment := providedComment trimBoth.
	
	commentQuoted := comment copyReplaceAll: (String with: $') with: (String with: $' with: $').
	st := String new writeStream.
	st nextPutAll: 'commentForCurrentUpdate'; cr.
	st nextPutAll: ' ^ '.
	st nextPut: $'.
	st nextPutAll: commentQuoted.
	st nextPut: $'.
	self class
		compile: (st contents)
		classified: 'public'.

	self class waitingCacheFolder deleteAllChildren.
	self saveChangedPackagesIntoWaitingFolder.
	self generateScriptAndUpdateMethodForNewVersionSilentlyPreLoad: preload postLoad: postLoad.
	self saveLatestScriptLoaderToWaitingFolder.