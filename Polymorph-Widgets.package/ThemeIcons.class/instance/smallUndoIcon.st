accessing - icons
smallUndoIcon
	"Private - Generated method"
	^ icons
			at: #'smallUndo'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallUndoIconContents readStream) ].