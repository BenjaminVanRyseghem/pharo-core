backward compatibility - file in/out
putCommentOnFile: aFileStream numbered: sourceIndex moveSource: moveSource forClass: aClass
	"Store the comment about the class onto file, aFileStream."
	| header |
	
	self classComment ifNil: [ ^ self ].

	aFileStream cr; nextPut: $!.
	header := String streamContents: [:strm | 
			strm nextPutAll: aClass name;
			nextPutAll: ' commentStamp: '.
			commentStamp ifNil: [commentStamp := '<historical>'].
			commentStamp storeOn: strm.
			strm nextPutAll: ' prior: '; nextPutAll: '0'].
	aFileStream nextChunkPut: header.
	aClass organization fileOutCommentOn: aFileStream
			moveSource: moveSource toFile: sourceIndex.
	aFileStream cr