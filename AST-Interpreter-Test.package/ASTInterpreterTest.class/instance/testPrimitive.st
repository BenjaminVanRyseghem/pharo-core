testing - message sent
testPrimitive
	self assert: (self interpret: '1 + 1') = 2. "simple"
	self assert: (self interpret: '1 + 1.5') = 2.5. "with fallback"