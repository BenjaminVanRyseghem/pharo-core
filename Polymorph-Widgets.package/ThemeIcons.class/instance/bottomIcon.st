accessing - icons
bottomIcon 
	^ icons
			at: #'bottomIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self bottomIconContents readStream) ].