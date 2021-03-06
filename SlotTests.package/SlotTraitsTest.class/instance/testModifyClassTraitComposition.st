tests
testModifyClassTraitComposition
	"Tests that when modifing the trait composition on class-side, the old methods are removed from the method dictionary, and the new ones are added."

	self make: [ :builder | 
		builder classTraitComposition: TOne ].

	aClass := self make: [ :builder | 
		builder classTraitComposition: TTwo ].
	
	self assert: TOne users isEmpty.
	self assert: TOne classTrait users isEmpty.
	self assert: TTwo users asArray equals: { aClass class }.
	self assert: TTwo classTrait users isEmpty.
	
	self deny: (aClass class canUnderstand: #one).
	self deny: (aClass class canUnderstand: #classOne).
	self assert: (aClass class canUnderstand: #two).
	aClass layout checkIntegrity.


	aClass := self make: [ :builder | 
		builder classTraitComposition: { } ].
	
	self assert: TOne users isEmpty.
	self assert: TOne classTrait users isEmpty.
	self assert: TTwo users isEmpty.
	self assert: TTwo classTrait users isEmpty.
	aClass layout checkIntegrity.
	
	self deny: (aClass canUnderstand: #one).
	self deny: (aClass class canUnderstand: #classOne).
	self deny: (aClass canUnderstand: #two).