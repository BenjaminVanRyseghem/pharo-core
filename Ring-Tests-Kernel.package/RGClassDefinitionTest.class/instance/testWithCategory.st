testing
testWithCategory
	| newClass |
	
	newClass:= (RGFactory current createClassNamed: #Object)
						category: 'Kernel-Objects';
						yourself.

	self assert: (newClass package isNil).
	self assert: (newClass category = 'Kernel-Objects').