filein/out
fileOutPreambleOn: stream
	"If the receiver has a preamble, put it out onto the stream.  "

	| aString |
	aString := self preambleString.
	(aString notNil and: [ aString size > 0 ])
		ifTrue: [ 
			stream nextChunkPut: aString.	"surroundedBySingleQuotes"
			stream
				cr;
				cr ]