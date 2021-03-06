settings
displaySettingsOn: aBuilder 
	<systemsettings>
"	(aBuilder pickOne: #displayDepth) 
		label: 'Display depth' translated;
		parent: #appearance;
		target: #Display; 
		getSelector: #depth;
		setSelector: #newDepth:;
		domainValues: self depthChoices;
		notInStyle.
"
	(aBuilder setting: #displayFullscreen)
		label: 'Fullscreen mode' translated;
		parent: #desktopSettings;
		target: #Display;
		getSelector: #isFullscreen;
		setSelector: #fullscreen:;
		description: 'On platforms that support it, set fullscreen mode' translated;
		default: false.
