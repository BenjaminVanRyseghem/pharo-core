priv pending
pendingSelector

	pending isEmpty ifTrue: [^ nil].
	^ pending last value "message" selector