instance creation
fullOnClass: aClass selector: aSelector
	"Open a new full browser set to class."

	| brower |
	brower := self new.
	brower setClass: aClass selector: aSelector.
	^ self 
		openBrowserView: (brower openEditString: nil)
		label: brower labelString