selection
methodSelectionAt: anIndex put: aBoolean

	| element |
	element := self getMethods at: anIndex ifAbsent: [ ^ self ].
	methodsSelection at: element put: aBoolean.