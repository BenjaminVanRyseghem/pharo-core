menu messages
sendersOfIt
	"Open a senders browser on the selected selector"

	| selectedSelector mthds aClass syst |
	self lineSelectAndEmptyCheck: [^ self].
	selectedSelector  := self selectedSelector.
	selectedSelector isNil ifTrue: [^ morph flash].
	syst := self model systemNavigation.
	mthds := (syst allCallsOn: selectedSelector).
	aClass := syst environment at: selectedSelector ifAbsent: [nil].   
	aClass isNil 
		ifFalse: [ mthds := mthds , (syst allReferencesTo: aClass binding) ].
	syst browseMessageList: mthds name: 'Senders or Users of ', selectedSelector autoSelect: selectedSelector 