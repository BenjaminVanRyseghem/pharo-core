*Deprecated30
ensureDeleted
	"Delete the file and does not raise exception if it does not exist contrary to delete"
	self deprecated: 'Use ensureDelete' on: '21/06/2013'  in: #Pharo30.
	self ensureDelete.