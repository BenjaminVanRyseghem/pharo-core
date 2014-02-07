*Versionner-Spec-Browser
databaseAddIcon 
	^ icons
			at: #'databaseAddIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self databaseAddIconContents  readStream) ].