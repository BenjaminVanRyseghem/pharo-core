tests
testAssemblyMemBase

	self 
		assert: [ :a | a mov: a RAX ptr to: a EAX ]
		bytes: #[ 16r8B 2r00000000 ].
		
	self 
		assert: [ :a | a mov: a RSP ptr to: a EAX]
		bytes: #[ 16r8B 16r04 16r24 ].
	self 
		assert: [ :a | a mov: a RBP ptr to: a EAX ]
		bytes: #[ 16r8B 16r45 16r00 ].