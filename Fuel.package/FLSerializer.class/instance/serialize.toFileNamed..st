serializing
serialize: anObject toFileNamed: aFilename
	"Serialize the graph starting at the root object received and answers the FLSerialization object"
	StandardFileStream 
		forceNewFileNamed: aFilename 
		do: [ :aFileStream |
			aFileStream binary. 
			self serialize: anObject on: aFileStream ]
	