testing - exceptions
testSignalHalt
	[ self interpret: '[1 halt] value' ]
		on: InterpretationError do: [ :error |
			self assert: error cause class equals: Halt.
			^ self ].
	self fail.