tests printing
testPrint24OnWithoutSeconds
	| cs rw |
	cs := '12:34:56' readStream.
	rw := ReadWriteStream on: ''.
	aTime 
		print24: true
		showSeconds: true
		on: rw.
	self assert: rw contents = cs contents