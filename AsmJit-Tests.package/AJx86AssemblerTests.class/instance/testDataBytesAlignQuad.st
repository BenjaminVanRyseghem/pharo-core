tests-data
testDataBytesAlignQuad
	
	|data|
	data := self setUpDataBytesAlign: 8. 
	self assert: asm bytes equals: #[144   0 0 0   0 0 0 0   16r12].