instance creation
openOn: aFileReference
	"Open a view of an instance of me on the given file reference."
	"FileList openOn: FileSystem memory"
	(FileList morphicViewOnDirectory: aFileReference) openInWorld