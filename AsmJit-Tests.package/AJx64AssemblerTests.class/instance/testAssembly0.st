tests
testAssembly0
	self assert: [ :a | a mov: 16rfeedface -> RAX ] 
		bytes: #[72 184 206 250 237 254 0 0 0 0]