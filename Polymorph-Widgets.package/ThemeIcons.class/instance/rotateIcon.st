accessing - icons
rotateIcon
	"Private - Generated method"
	^ icons
			at: #'rotate'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self rotateIconContents readStream) ].