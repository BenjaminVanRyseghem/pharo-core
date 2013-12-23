startup loading
loadFromDefaultLocations
	
	self class allowStartupScript
		ifTrue: [ self load: self retrieveFilesStream ]