testing - message sent
testSend
	self assert: (self interpret: '#(1 2) at: 1') = 1.
	self assert: (self interpret: '1 + 2') = 3.
	"this is for future use :)"
	self assert: (self interpret: '123 asString') = '123'.