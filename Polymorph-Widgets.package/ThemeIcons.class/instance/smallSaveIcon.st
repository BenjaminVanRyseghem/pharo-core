accessing - icons
smallSaveIcon
	"Private - Generated method"
	^ icons
			at: #'smallSave'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallSaveIconContents readStream) ].