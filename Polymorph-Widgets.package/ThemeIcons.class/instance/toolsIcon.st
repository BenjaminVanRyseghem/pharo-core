accessing - icons
toolsIcon
	"Private - Generated method"
	^ icons
			at: #'toolsIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self toolsIconContents readStream) ].