tests
testPrintOn
	| cs rw |
	cs := '2 January 2004 12:34:56 am' readStream.
	rw := ReadWriteStream on: ''.
	aTimeStamp printOn: rw.
	self assert: rw contents = cs contents