basic asserting
testInstanceCreation
	self assert: ((Array new) isKindOf: Array).
	self assert: ((Error new) isKindOf: Error).
	self assert: ((MessageNotUnderstood new) isKindOf: MessageNotUnderstood)