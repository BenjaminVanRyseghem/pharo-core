actions
accept
 
	Smalltalk tools userManager canEditCode 
		ifFalse: [ ^ self hasUnacceptedEdits: false ].
	self acceptBasic.
	acceptAction ifNotNil: [acceptAction value: textMorph contents asText].