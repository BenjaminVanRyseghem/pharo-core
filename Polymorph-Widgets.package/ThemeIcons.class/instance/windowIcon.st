accessing - icons
windowIcon
	"Private - Generated method"
	^ icons
			at: #'window'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self windowIconContents readStream) ].