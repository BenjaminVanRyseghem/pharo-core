icons
radioSelectedForm
	^ Form fromBinaryStream: ( Base64MimeConverter mimeDecodeToBytes: self radioSelectedFormContents readStream)
 