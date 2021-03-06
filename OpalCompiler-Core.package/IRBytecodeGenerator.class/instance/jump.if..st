private
jump: distance if: condition

	| hi |
	distance = 0 ifTrue: [
		"jumps to fall through, no-op"
		^ self nextPut: (Bytecodes at: #popStackBytecode)].
	condition ifTrue: [
		hi := distance // 256.
		hi < 4 ifFalse: [self error: 'true jump too big'].
		self nextPut: (Bytecodes at: #longJumpIfTrue) first + hi.
		self nextPut: distance \\ 256.
	] ifFalse: [
		distance <= 8 ifTrue: [
			self nextPut: (Bytecodes at: #shortConditionalJump) first + distance - 1.
		] ifFalse: [
			hi := distance // 256.
			hi < 4 ifFalse: [self error: 'false jump too big'].
			self nextPut: (Bytecodes at: #longJumpIfFalse) first + hi.
			self nextPut: distance \\ 256.
		].
	]	
