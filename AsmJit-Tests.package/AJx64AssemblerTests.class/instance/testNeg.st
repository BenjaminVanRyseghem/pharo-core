tests
testNeg
	"8bit ======================================================"
	self 
		assert: [ :a | a neg: a AL]
		bytes: #[ 16rF6 "ModR/M" 2r11011000 ].
	"8bit upper bank with REX"
	self 
		assert: [ :a | a neg: a R8B]
		bytes: #[ 2r01000001 16rF6 "ModR/M" 2r11011000 ].
	
	"16bit with fallback ======================================="
	self 
		assert: [ :a | a neg: a AX]
		bytes: #[ 16r66 16rF7"ModR/M" 2r11011000 ].
	"16bit upper bank with REX"
	self 
		assert: [ :a | a neg: a R8W]
		bytes: #[ 16r66 2r01000001 16rF7"ModR/M" 2r11011000 ].
	"word 16bit IP relative "
	self 
		assert: [ :a | a neg: a IP ptr16 + 16r12345678]
		bytes: #[16r66 16rF7 "ModR/M"2r00011101 16r78 16r56 16r34 16r12].
		
	"32bit ===================================================="
	self 
		assert: [ :a | a neg: a EAX]
		bytes: #[ 16rF7"ModR/M" 2r11011000 ].
	"32bit upper bank with REX"
	self 
		assert: [ :a | a neg: a R8D]
		bytes: #[ 2r01000001 16rF7"ModR/M" 2r11011000 ].
	"negate double word 32bit EIP relative "
	self 
		assert: [ :a | a neg: a EIP ptr32 + 16r12345678]
		bytes: #[16rF7 "ModR/M"2r00011101 16r78 16r56 16r34 16r12].
		
	"64bit with REX =========================================="
	self 
		assert: [ :a | a neg: a RAX]
		bytes: #[ 2r01001000 16rF7 "ModR/M"2r11011000 ].
	"64bit upper bank"
	self 
		assert: [ :a | a neg: a R8]
		bytes: #[ 2r01001001 16rF7 "ModR/M"2r11011000 ].
	"negate quadword 64bit RIP relative "
	self 
		assert: [ :a | a neg: a RIP ptr64 + 16r12345678]
		bytes: #["REX"2r01001000 16rF7 "ModR/M"2r00011101 16r78 16r56 16r34 16r12].
		