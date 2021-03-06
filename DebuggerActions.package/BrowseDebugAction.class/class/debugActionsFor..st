actions creation
debugActionsFor: aDebugger
	<contextMenuDebuggingAction>
	| initilOrder |
	
	initilOrder := 60.
	^ { 
		self new
			id: #browseSendersOfMessages;
			order: initilOrder;
			keyText: 'n';
			label: 'Senders of...'.
		self new
			id: #browseMessages;
			order: initilOrder + 5;
			keyText: 'm';
			label: 'Implementors of...'.
		self new
			id: #methodHierarchy;
			order: initilOrder + 10;
			keyText: 'i';
			label: 'Inheritance'.
		self new
			id: #browseVersions;
			order: initilOrder + 15;
			keyText: 'v';
			label: 'Versions'.
		self new
			id: #browseInstVarRefs;
			order: initilOrder + 20;
			label: 'Inst var refs...'.
		self new
			id: #browseClassVarRefs;
			order: initilOrder + 25;
			label: 'Class var refs...'.
		self new
			id: #browseClassVariables;
			order: initilOrder + 30;
			label: 'Class variables';
			withSeparatorAfter.
			
		self new
			id: #browseClassRefs;
			order: initilOrder + 35;
			keyText: 'N';
			label: 'Class refs'.
		self new
			id: #browseMethodFull;
			order: initilOrder + 40;
			keyText: 'b';
			label: 'Browse full'.
		self new
			id: #fileOutMessage;
			order: initilOrder + 45;
			label: 'File out'.
		self new
			id: #inspectInstances;
			order: initilOrder + 50;
			label: 'Inspect instances'.
		self new
			id: #inspectSubInstances;
			order: initilOrder + 55;
			label: 'Inspect subinstances';
			withSeparatorAfter
	 }