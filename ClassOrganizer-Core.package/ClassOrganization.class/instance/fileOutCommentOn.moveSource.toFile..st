backward compatibility - file in/out
fileOutCommentOn: aFileStream moveSource: moveSource toFile: fileIndex
	"Copy the class comment to aFileStream.  If moveSource is true (as in compressChanges or compressSources, then update classComment to point to the new file."
	| fileComment |
	self classComment ifNil: [ ^ self ].
	
	aFileStream cr.
	fileComment := RemoteString 
						newString: self classComment string
						onFileNumber: fileIndex 
						toFile: aFileStream.
	moveSource 
		ifTrue: [ self classComment: fileComment ]