*opalcompiler-core
isInlineCase
	self methodNode compilationContext optionInlineCase ifFalse: [ ^false ]. 
	self isCascaded ifTrue: [^ false].
	(#(caseOf: caseOf:otherwise:) includes: self selector) ifFalse: [^ false].
	self arguments size = 2 ifTrue: [  "otherwise block"
		self arguments last isBlock ifFalse: [^ false]].
	self arguments first isArray ifFalse: [^ false].
	self arguments first statements do: [:assoc |
		(assoc isMessage and: [assoc selector == #->]) ifFalse: [^ false].
		assoc receiver isBlock ifFalse: [^ false].
		assoc receiver arguments isEmpty ifFalse: [self notify: 'caseOf: takes zero-arg blocks'. ^ false].
		assoc arguments first isBlock ifFalse: [^ false].
		assoc arguments first arguments isEmpty ifFalse: [self notify: 'caseOf: takes zero-arg blocks'].
	].
	^ true