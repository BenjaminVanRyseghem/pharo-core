testing
testEnsureEndsWith
	"self debug: #testEnsureEndsWith"
	| stream |
	stream := String new writeStream.
	stream nextPutAll: 'this is a test'.
	stream ensureEndsWith: Character cr.
	stream nextPutAll: 'for WriteStreamTest'.
	self assert: stream contents = (('this is a test' copyWith: Character cr), 'for WriteStreamTest').
	
	"Manually put a new line and verify there are no 2 new lines"
	stream := String new writeStream.
	stream nextPutAll: ('this is a test' copyWith: Character cr).
	stream ensureEndsWith: Character cr.
	stream nextPutAll: 'for WriteStreamTest'.
	self assert: stream contents = (('this is a test' copyWith: Character cr), 'for WriteStreamTest').