accessing - icons
haloMenuIcon
	"Private - Generated method"
	^ icons
			at: #'haloMenu'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloMenuIconContents readStream) ].