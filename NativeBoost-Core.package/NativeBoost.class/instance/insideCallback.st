callback support
insideCallback
	bootstrapping ifTrue: [ ^ false ].
	^ (callbackCounterAddr nbInt32AtOffset:  0) ~= 0