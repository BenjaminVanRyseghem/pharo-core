tests
testPushingFloats

	self assert: (self pushFloat: 100.0) = 100.0.
	self assert: (self pushDouble: 100.0) = 100.0.