accessing - icons
smallDebugItIcon
	"Private - Generated method"
	^ icons
			at: #'smallDebugItIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallDebugItIconContents readStream) ].