printing
abstractSymbolic
	"Answer a String that contains a list of all the byte codes in a method with a
	 short description of each, using relative addresses and not including code bytes."

	| aStream |
	aStream := (String new: 1000) writeStream.
	self longPrintRelativeOn: aStream indent: 0.
	^aStream contents