protocol
browseConfiguration: aConfiguration
	aConfiguration recalculate.
	^ VersionnerProjectBrowser openOn: aConfiguration.