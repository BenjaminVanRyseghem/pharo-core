emitting code
emitLongJump: desc target: target
	| addr sz nextInstruction |
	
	sz := self isConditional
		ifTrue: [ 2 ]
		ifFalse: [ 1 ].
		
	nextInstruction := position + 4 + sz.
	addr := (AJImmediate ivalue: target - nextInstruction) asDWord.
	
	^ self isConditional
		ifFalse: [ self emitUnconditionalJumpTo: addr ]
		ifTrue: [ 	self emitConditionalJump: addr to: desc ]