tests
testModifyTraitComposition
	"Tests that when modifing the trait composition, the old methods are removed from the method dictionary, and the new ones are added."
	
	self make: [ :builder | 
		builder traitComposition: TOne ].

	aClass := self make: [ :builder | 
		builder traitComposition: TTwo ].
	
	self assert: TOne users isEmpty.
	self assert: TOne classTrait users isEmpty.
	self assert: TTwo users asArray equals: { aClass }.
	"self assert: TTwo classTrait users isEmpty."
	aClass layout checkIntegrity.
	
	self deny: (aClass canUnderstand: #one).
	self deny: (aClass class canUnderstand: #classOne).
	self assert: (aClass canUnderstand: #two).
	
	
	aClass := self make: [ :builder | 
		builder traitComposition: { } ].
	
	self assert: TOne users isEmpty.
	self assert: TOne classTrait users isEmpty.
	self assert: TTwo users isEmpty.
	self assert: TTwo classTrait users isEmpty.
	aClass layout checkIntegrity.
	
	self deny: (aClass canUnderstand: #one).
	self deny: (aClass class canUnderstand: #classOne).
	self deny: (aClass canUnderstand: #two).
	
