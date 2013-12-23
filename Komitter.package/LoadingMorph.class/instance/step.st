stepping and presenter
step

	self isStepping ifFalse: [ ^ self ].
	
	self applyState: currentState nextState.