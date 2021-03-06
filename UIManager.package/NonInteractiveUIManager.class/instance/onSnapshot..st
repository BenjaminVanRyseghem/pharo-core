events
onSnapshot: resuming
	"The resuming argument is true when image boots from disk,
	and false, if user just did an image snapshot."
	
	resuming ifTrue: [
		Smalltalk isHeadless ifFalse: [
			"restore old, or nil, so it will be set in #default "
			uiManager beDefault.  
			UIManager default onSnapshot: resuming.
			^ self ].
		Smalltalk isInteractive ifTrue: [
			"use a headless but interactive manager"
			^ self headlessManager onSnapshot: resuming ]].
	
	
	" this flag set to true only if we are saving a snapshot before quitting "
	doNotQuitOnRestart ifTrue: [
		Smalltalk snapshot: false andQuit: true].