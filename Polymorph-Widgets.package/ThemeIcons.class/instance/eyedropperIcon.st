accessing - icons
eyedropperIcon
	"Private - Generated method"
	^ icons
			at: #'eyedropper'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self eyedropperIconContents readStream) ].