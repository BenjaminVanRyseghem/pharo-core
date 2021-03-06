private
jumpForward: distance

	distance = 0 ifTrue: [^ self].  "no-op"
	distance <= 8 ifTrue: [
		self nextPut: (Bytecodes at: #shortUnconditionalJump) first + distance - 1.
	] ifFalse: [
		distance > 1023 ifTrue: [self error: 'forward jump too big'].
		self nextPut: (Bytecodes at: #longUnconditionalJump) first + (distance // 256) + 4.
		self nextPut: distance \\ 256.
	].
