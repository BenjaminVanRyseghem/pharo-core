accessing - icons
haloRotIcon
	"Private - Generated method"
	^ icons
			at: #'haloRot'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloRotIconContents readStream) ].