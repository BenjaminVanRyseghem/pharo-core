tests
testPrintOn
	| cs rw |
	cs := '1901-01-01T00:00:00+00:00' readStream.
	rw := ReadWriteStream on: ''.
	aDateAndTime printOn: rw.
	self assert: rw contents = cs contents.
	cs := 'a TimeZone(ETZ)' readStream.
	rw := ReadWriteStream on: ''.
	aTimeZone printOn: rw.
	self assert: rw contents = cs contents