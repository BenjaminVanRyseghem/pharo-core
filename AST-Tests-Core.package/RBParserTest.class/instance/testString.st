tests
testString
	self assert: (RBParser parseMethod: 'selector ^ ''<''') isMethod.
	self assert: (RBParser parseMethod: 'selector ^ ''<'', self') isMethod.
	self assert: (RBParser parseMethod: 'selector ''=''') isMethod.
	self assert: (RBParser parseMethod: 'selector '':=''') isMethod.
	self assert: (RBParser parseMethod: 'selector ''<''') isMethod.
	self assert: (RBParser parseMethod: 'selector ''>''') isMethod.
	self assert: (RBParser parseMethod: 'selector ^ ''<>''') isMethod.