own services
serviceCompressFile
	"Answer a service for compressing a file"

	^ SimpleServiceEntry 
		provider: self 
		label: 'Compress' 
		selector: #compressFile 
		description: 'Compress file' 
		buttonLabel: 'Compress'