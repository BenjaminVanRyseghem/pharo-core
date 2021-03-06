helpers
assertClassBuiltWith: blockToBuildAClass isEqualToClassBuiltWith: blockToBuildAnotherClass
	
	aClass := self make: [ :builder | 
		builder 
			name: self aClassName;
			in: blockToBuildAClass ].
		
	anotherClass := self make: [ :builder | 
		builder 
			name: self anotherClassName;
			in: blockToBuildAnotherClass ].
	
	self assert: aClass layout equals: aClass layout.	
	self assert: aClass layout equals: anotherClass layout.
	self assert: aClass layout hash equals: anotherClass layout hash.