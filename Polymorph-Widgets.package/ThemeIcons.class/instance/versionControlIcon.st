accessing - icons
versionControlIcon
	"Private - Generated method"
	^ icons
			at: #'versionControlIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self versionControlIconContents readStream) ].