class functions
shiftedClassListMenu: aMenu
	"Set up the menu to apply to the receiver's class list when the shift key is down"

	^ aMenu addList: #(
			-
			('Unsent methods'			browseUnusedMethods	'Browse all methods defined by this class that have no senders')
			('Unreferenced inst vars'	showUnreferencedInstVars	'Show a list of all instance variables that are not referenced in methods')
			('Unreferenced class vars'	showUnreferencedClassVars	'Show a list of all class variables that are not referenced in methods')
			('Subclass template'			makeNewSubclass		'Put a template into the code pane for defining of a subclass of this class')
			-
			('Inspect instances'			inspectInstances			'Open an inspector on all the extant instances of this class')
			('Inspect subinstances'		inspectSubInstances		'Open an inspector on all the extant instances of this class and of all of its subclasses')
			-
			('Add all meths to current chgs'		addAllMethodsToCurrentChangeSet
																'Place all the methods defined by this class into the current change set')
			('Create inst var accessors'	createInstVarAccessors	'Compile instance-variable access methods for any instance variables that do not yet have them')
			-
			('More...'					offerUnshiftedClassListMenu	'Return to the standard class-list menu'))