accessing - icons
smallDeleteIcon
	"Private - Generated method"
	^ icons
			at: #'smallDelete'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallDeleteIconContents readStream) ].