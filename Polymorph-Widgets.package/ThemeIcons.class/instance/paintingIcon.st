accessing - icons
paintingIcon
	"Private - Generated method"
	^ icons
			at: #'painting'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self paintingIconContents readStream) ].