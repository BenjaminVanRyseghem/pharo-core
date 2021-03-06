as yet unclassified
changesMenu: m
	"Answer the changes menu."

	|menu|
	menu := self newMenu
		addTitle: 'Changes'
		icon: Smalltalk ui icons smallCopyIcon.		
	menu
		addToggle: 'Browse class...' translated
		target: self
		selector: #browseClass
		getStateSelector: nil
		enablementSelector: #selectionHasAcutalClass.
	menu lastItem
	 	font: self theme menuFont;
		icon: Smalltalk tools browser taskbarIcon;
		keyText: 'Cmd+b'.
	menu addLine.
	menu
		addToggle: 'Versions...' translated
		target: self
		selector: #browseVersions
		getStateSelector: nil
		enablementSelector: #selectionIsMethodChange.
	menu lastItem
	 	font: self theme menuFont;
		icon: Smalltalk ui icons smallJustifiedIcon;
		keyText: 'Cmd+v'.	
	menu
		addToggle: 'Senders...' translated
		target: self
		selector: #browseSenders
		getStateSelector: nil
		enablementSelector: #selectionIsMethodChange.
	menu lastItem
	 	font: self theme menuFont;
		icon: Smalltalk ui icons smallForwardIcon;
		keyText: 'Cmd+n'.	
	menu
		addToggle: 'Implementors...' translated
		target: self
		selector: #browseImplementors
		getStateSelector: nil
		enablementSelector: #selectionIsMethodChange.
	menu lastItem
	 	font: self theme menuFont;
		icon: Smalltalk ui icons smallDoItIcon;
		keyText: 'Cmd+m'.
	menu
		addToggle: 'Install incoming version' translated
		target: self
		selector: #loadMethodSelection
		getStateSelector: nil
		enablementSelector: #selectionIsMethodChange.
	menu lastItem
	 	font: self theme menuFont;
		icon: Smalltalk ui icons smallUpdateIcon.
	menu
		add: 'Expand All' translated
		target: self model
		selector: #expandAll.
	menu
		add: 'Collapse All' translated
		target: self model
		selector: #collapseAll.
	^menu