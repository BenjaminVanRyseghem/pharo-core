*Zinc-System-Support
downloadSources
	"Try downloading the sources file from 2 different locations to the shared directory.
	Be silent when this does not work: a missing sources will be triggered later on.
	For now, use the VM directory."
	
	| sharedDirectory |
	self shouldDownloadSourcesFile ifFalse: [ ^ self ].
	sharedDirectory := self vmDirectory.
	self sourcesDownloadClient
		url: 'http://files.pharo.org/sources/PharoV30.sources';
		downloadTo: sharedDirectory;
		close.
	(sharedDirectory / self sourcesFile basename) exists
		ifTrue: [ ^ self ].
	self sourcesDownloadClient
		url: 'http://stfx.eu/PharoV30.sources';
		downloadTo: sharedDirectory;
		close.
		
		
	