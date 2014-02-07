*Versionner-Spec-Browser
deleteIcon 
	^ icons
			at: #'deleteIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self deleteIconContents readStream) ].