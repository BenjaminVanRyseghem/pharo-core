accessing - icons
radioButtonOffIcon
	"Private - Generated method"
	^ icons
			at: #'radioButtonOff'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self radioButtonOffIconContents readStream) ].