*Versionner-Spec-Browser
addIcon 
	^ icons
			at: #'addIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self addIconContents readStream) ].