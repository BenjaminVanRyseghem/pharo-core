protocol
toDosOf: aRule

	aRule ifNil: [ ^ {}].
	^ aRule isComposite
		ifTrue: [ aRule leaves gather: [:rule | self toDosOf: rule]]
		ifFalse: [toDos at: aRule ifAbsent: [{}]]