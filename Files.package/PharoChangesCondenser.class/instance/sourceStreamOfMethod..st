private - 1 writing
sourceStreamOfMethod: aMethod
	| aStream |
	aStream := sourceStreams at: aMethod fileIndex.
	aStream position: aMethod filePosition.
	^ aStream 