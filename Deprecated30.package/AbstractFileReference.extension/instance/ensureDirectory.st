*Deprecated30
ensureDirectory
	"Verifies that the directory does not exist and only creates if necessary. Do not remove files contained if they exist."
	self deprecated: 'Use ensureCreateDirectory' on: '21/06/2013'  in: #Pharo30.
	^ self ensureCreateDirectory