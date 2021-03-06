*NautilusCommon
correspondingTestMethod

	self isTestMethod
		ifTrue: [ ^ self ]
		ifFalse: [| sel testClass |
			(self selector endsWith: ':')
				ifTrue: [ sel := (self selector copyReplaceAll: ':' with:'') asLowercase ]
				ifFalse:[  sel := self selector asLowercase ].
			(sel beginsWith: 'test')
				ifFalse: [ sel := 'test', sel].
			^ ((testClass := self methodClass correspondingForTest) = self methodClass)
				ifTrue: [ nil ]
				ifFalse:[ testClass methods detect: [:each |
					each selector asLowercase = sel ] ifNone: [ nil ]]]