initialize
setCanDropOSFile
	canDropOSFile
		state: false;
		enabled: false;
		whenChangedDo: [ self checkRoot ];
		label: 'Can drop files into the image from the OS ?'