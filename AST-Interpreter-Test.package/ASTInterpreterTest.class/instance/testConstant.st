testing
testConstant
	self assert: (self interpret: '1') = 1.
	self assert: (self interpret: 'nil') = nil.
	self assert: (self interpret: 'false') = false.
	self assert: (self interpret: '''asdf''') = 'asdf'.
	self assert: (self interpret: '#symbol') = #symbol.