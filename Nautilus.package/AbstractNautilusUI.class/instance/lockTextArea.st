source code area
lockTextArea

	self selectedMethod ifNil: [ ^ self ].
	
	sourceTextArea lockFrom: self selectedMethod.
	self buildNewSourceTextArea.
	multipleMethodsEditor addEditor: sourceTextArea.
	self changed: #sourceCodeFrom:.