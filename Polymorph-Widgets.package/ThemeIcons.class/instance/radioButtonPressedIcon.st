accessing - icons
radioButtonPressedIcon
	"Private - Generated method"
	^ icons
			at: #'radioButtonPressed'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self radioButtonPressedIconContents readStream) ].