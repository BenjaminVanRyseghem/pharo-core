accessing - icons
smallWindowIcon
	"Private - Generated method"
	^ icons
			at: #'smallWindow'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallWindowIconContents readStream) ].