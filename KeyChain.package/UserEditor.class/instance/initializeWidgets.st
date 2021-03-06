initialize
initializeWidgets
		
	self instantiateModels: #(
		gravatarAddress TextInputFieldModel
		setPassword ButtonModel
		testGravatar ButtonModel
		userName TextInputFieldModel
		editPublic ButtonModel
		editPrivate ButtonModel
		editPermissions ButtonModel ).
	
	self initializeContainer.
	self setGravatarAddress.
	self setTestGravatar.
	self registerUserChanges.
	self initializeSetPassword.
	self initializeUserName.
	
	editPublic
		label: 'edit public keychain';
		enabled: false;
		state: false;
		action: [ self editPublicAction ].
		
	editPrivate
		label: 'edit private keychain';
		enabled: false;
		state: false;
		action: [ self editPrivateAction ].
		
	editPermissions
		label: 'edit permissions';
		enabled: false;
		state: false;
		action: [ self editPermissionsAction ].
	
	self focusOrder 
		add: userName;
		add: setPassword;
		add: gravatarAddress;
		add: testGravatar;
		add: editPublic;
		add: editPrivate;
		add: editPermissions.