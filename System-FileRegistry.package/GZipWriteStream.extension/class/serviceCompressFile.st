*System-FileRegistry
serviceCompressFile

	^ FileModifyingSimpleServiceEntry 
				provider: self 
				label: 'Compress file'
				selector: #compressFile:
				description: 'Compress file using gzip compression, making a new file'