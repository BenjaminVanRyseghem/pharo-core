class
addFullClassIn: aPackage
	" add a new class in the provided package. A dialog will be opened to let the user set the class definition "

	| classSymbol systemCategory classDefinition |
	classSymbol := #NameOfSubclass.
	systemCategory := aPackage
		ifNotNil: [ aPackage categoryName ]
		ifNil: [ 'Unknown' ].
	classDefinition := self class defineFullClassTemplate 
		format: { classSymbol. systemCategory } .
	classDefinition := UIManager default 
		multiLineRequest: 'Define class definition:'
		initialAnswer: classDefinition
		answerHeight: 250.
	classDefinition isEmptyOrNil 
		ifTrue: [ ^ self ].
	self class evaluate: classDefinition.